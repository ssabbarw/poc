import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/signup_enter_number_proceed_screen/models/signup_enter_number_proceed_model.dart';
part 'signup_enter_number_proceed_event.dart';
part 'signup_enter_number_proceed_state.dart';

class SignupEnterNumberProceedBloc
    extends Bloc<SignupEnterNumberProceedEvent, SignupEnterNumberProceedState> {
  SignupEnterNumberProceedBloc(SignupEnterNumberProceedState initialState)
      : super(initialState) {
    on<SignupEnterNumberProceedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupEnterNumberProceedInitialEvent event,
    Emitter<SignupEnterNumberProceedState> emit,
  ) async {}
}
