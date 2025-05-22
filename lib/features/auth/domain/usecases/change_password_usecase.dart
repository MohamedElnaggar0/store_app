import 'package:dartz/dartz.dart';
import 'package:store_app/core/usecase/usecase.dart';
import 'package:store_app/features/auth/domain/repository/auth_repository.dart';
import 'package:store_app/service_locator.dart';

class ChangePasswordUsecase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await s1<AuthRepository>().changePassword(params!);
  }
}
