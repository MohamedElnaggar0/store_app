part of 'get_ages_cubit.dart';

@immutable
sealed class GetAgesState {}

final class GetAgesInitial extends GetAgesState {}

final class GetAgesLoading extends GetAgesState {}

final class GetAgesSuccess extends GetAgesState {
  final List<DocumentSnapshot<Map<String, dynamic>>> ages;
  GetAgesSuccess(this.ages);
}

final class GetAgesFailure extends GetAgesState {
  final String message;
  GetAgesFailure(this.message);
}
