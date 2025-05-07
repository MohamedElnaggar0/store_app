import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/auth/domain/usecases/get_age_usecase.dart';
import 'package:store_app/service_locator.dart';

part 'get_ages_state.dart';

class GetAgesCubit extends Cubit<GetAgesState> {
  GetAgesCubit() : super(GetAgesLoading());

  void getAges() async {
    final returnData = await s1<GetAgeUsecase>().call();
    returnData.fold(
      (message) => emit(GetAgesFailure(message)),
      (data) => emit(
        GetAgesSuccess(data),
      ),
    );
  }
}
