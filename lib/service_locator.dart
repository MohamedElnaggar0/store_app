import 'package:get_it/get_it.dart';
import 'package:store_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:store_app/features/auth/data/source/auth_firebase_service.dart';
import 'package:store_app/features/auth/domain/repository/auth_repository.dart';
import 'package:store_app/features/auth/domain/usecases/get_age_usecase.dart';
import 'package:store_app/features/auth/domain/usecases/signup_usecase.dart';

final s1 = GetIt.instance;
Future<void> setupLocator() async {
  // services

  s1.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

// repositories

  s1.registerSingleton<AuthRepository>((AuthRepositoryImpl()));

// usecases
  s1.registerSingleton<SignupUsecase>(SignupUsecase());
  s1.registerSingleton<GetAgeUsecase>(GetAgeUsecase());
}
