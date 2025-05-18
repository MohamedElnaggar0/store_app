import 'package:dartz/dartz.dart';
import 'package:store_app/core/usecase/usecase.dart';
import 'package:store_app/features/auth/data/models/user_signin_req.dart';
import 'package:store_app/features/auth/domain/repository/auth_repository.dart';
import 'package:store_app/service_locator.dart';

class SigninUsecase implements UseCase<Either, UserSigninReq> {
  @override
  Future<Either> call({UserSigninReq? params}) async {
    return await s1<AuthRepository>().signin(params!);
  }
}
