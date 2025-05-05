import 'package:store_app/features/auth/data/models/user_creation_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either> signup(UserCreationReq userCreationReq);
}
