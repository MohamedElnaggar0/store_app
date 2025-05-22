part of 'button_cubit.dart';

@immutable
sealed class ButtonState {}

final class ButtonInitial extends ButtonState {}

final class ButtonSuccess extends ButtonState {}

final class ButtonFailure extends ButtonState {
  final String message;
  ButtonFailure({required this.message});
}

final class ButtonLoading extends ButtonState {}
