import 'package:dartz/dartz.dart';
import 'package:store_app/features/auth/data/models/user_creation_req.dart';
import 'package:store_app/features/auth/data/source/auth_firebase_service.dart';
import 'package:store_app/features/auth/domain/repository/auth_repository.dart';
import 'package:store_app/service_locator.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either> signup(UserCreationReq userCreationReq) async {
    return await s1<AuthFirebaseService>().signup(userCreationReq);
  }

  @override
  Future<Either> getAge() async {
    return await s1<AuthFirebaseService>().getAge();
  }
}
