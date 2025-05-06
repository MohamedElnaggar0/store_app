import 'package:dartz/dartz.dart';
import 'package:store_app/core/usecase/usecase.dart';
import 'package:store_app/features/auth/domain/repository/auth_repository.dart';
import 'package:store_app/service_locator.dart';

class GetAgeUsecase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await s1<AuthRepository>().getAge();
  }
}
