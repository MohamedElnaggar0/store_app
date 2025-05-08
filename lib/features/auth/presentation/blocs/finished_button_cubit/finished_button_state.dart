part of 'finished_button_cubit.dart';

@immutable
sealed class FinishedButtonState {}

final class FinishedButtonInitial extends FinishedButtonState {}

final class FinishedButtonSuccess extends FinishedButtonState {}

final class FinishedButtonFailure extends FinishedButtonState {
  final String message;
  FinishedButtonFailure({required this.message});
}

final class FinishedButtonLoading extends FinishedButtonState {}
