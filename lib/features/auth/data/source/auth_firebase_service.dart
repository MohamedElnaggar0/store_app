import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/features/auth/data/models/user_creation_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(UserCreationReq userCreationReq);
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
}
