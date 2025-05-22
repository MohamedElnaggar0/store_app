import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/features/auth/data/models/user_creation_req.dart';
import 'package:store_app/features/auth/data/models/user_signin_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(UserCreationReq userCreationReq);
  Future<Either> getAge();

  Future<Either> singnin(UserSigninReq userSigninReq);
}

class AuthFirebaseServiceImpl implements AuthFirebaseService {
  @override
  Future<Either> signup(UserCreationReq userCreationReq) async {
    try {
      final data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userCreationReq.email!,
        password: userCreationReq.password!,
      );

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(data.user!.uid)
          .set({
        'email': userCreationReq.email,
        'firstName': userCreationReq.firstName,
        'lastName': userCreationReq.lastName,
        'gender': userCreationReq.gender,
        'age': userCreationReq.age,
        'createdAt': FieldValue.serverTimestamp(),
      });
      return right('success');
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = ('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        message = ('The account already exists for that email.');
      }
      return left(message);
    }
  }

  @override
  Future<Either> getAge() async {
    try {
      final returnData = await FirebaseFirestore.instance
          .collection('Ages')
          .orderBy("value", descending: false)
          .get();
      return right(returnData.docs);
    } catch (e) {
      return left('error');
    }
  }

  @override
  Future<Either> singnin(UserSigninReq userSigninReq) async {
    try {
      final data = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userSigninReq.email!,
        password: userSigninReq.password!,
      );
      return right(data);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left('البريد الإلكتروني غير موجود');
      } else if (e.code == 'wrong-password') {
        return left('كلمة المرور غير صحيحة');
      } else if (e.code == 'invalid-email') {
        return left('البريد الإلكتروني غير صالح');
      } else {
        return left('حدث خطأ أثناء تسجيل الدخول');
      }
    }
  }
}
