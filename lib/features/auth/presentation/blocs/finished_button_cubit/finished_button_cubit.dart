import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/usecase/usecase.dart';

part 'finished_button_state.dart';

class FinishedButtonCubit extends Cubit<FinishedButtonState> {
  FinishedButtonCubit() : super(FinishedButtonInitial());
  Future<void> clickButton({dynamic params, required UseCase usecase}) async {
    emit(FinishedButtonLoading());
    try {
      final Either data = await usecase.call(params: params);
      data.fold(
        (failure) {
          emit(FinishedButtonFailure(message: 'something went wrong'));
        },
        (data) {
          emit(FinishedButtonSuccess());
        },
      );
    } catch (e) {
      emit(FinishedButtonFailure(message: e.toString()));
    }
  }
}
