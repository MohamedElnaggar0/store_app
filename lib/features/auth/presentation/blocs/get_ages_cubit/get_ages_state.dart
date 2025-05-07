part of 'get_ages_cubit.dart';

@immutable
sealed class GetAgesState {}

final class GetAgesLoading extends GetAgesState {}

final class GetAgesSuccess extends GetAgesState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> ages;
  GetAgesSuccess(this.ages);
}

final class GetAgesFailure extends GetAgesState {
  final String message;
  GetAgesFailure(this.message);
}
