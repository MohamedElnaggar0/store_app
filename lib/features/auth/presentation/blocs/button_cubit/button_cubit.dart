import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/usecase/usecase.dart';

part 'button_state.dart';

class ButtonCubit extends Cubit<ButtonState> {
  ButtonCubit() : super(ButtonInitial());
  Future<void> clickButton({dynamic params, required UseCase usecase}) async {
    emit(ButtonLoading());
    try {
      final Either data = await usecase.call(params: params);
      data.fold(
        (failure) {
          emit(ButtonFailure(message: 'something went wrong'));
        },
        (data) {
          emit(ButtonSuccess());
        },
      );
    } catch (e) {
      emit(ButtonFailure(message: e.toString()));
    }
  }
}
