import 'package:store_app/features/auth/data/models/user_creation_req.dart';
import 'package:dartz/dartz.dart';
import 'package:store_app/features/auth/data/models/user_signin_req.dart';

abstract class AuthRepository {
  Future<Either> signup(UserCreationReq userCreationReq);
  Future<Either> getAge();

  Future<Either> signin(UserSigninReq userSigninReq);
}
