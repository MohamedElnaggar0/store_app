part of 'splash_cubit.dart';

sealed class SplashState {}

final class SplashInitial extends SplashState {}

final class Authenticated extends SplashState {}

final class UnAuthenticated extends SplashState {}
