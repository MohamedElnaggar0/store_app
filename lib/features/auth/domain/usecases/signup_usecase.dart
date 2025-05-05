import 'package:dartz/dartz.dart';
import 'package:store_app/core/usecase/usecase.dart';
import 'package:store_app/features/auth/data/models/user_creation_req.dart';
import 'package:store_app/features/auth/domain/repository/auth_repository.dart';
import 'package:store_app/service_locator.dart';

class SignupUsecase implements UseCase<Either, UserCreationReq> {
  @override
  Future<Either> call(UserCreationReq? params) async {
    return await s1<AuthRepository>().signup(params!);
  }
}
