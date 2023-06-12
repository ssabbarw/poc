import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/signup_enter_number_screen/models/signup_enter_number_model.dart';
part 'signup_enter_number_event.dart';
part 'signup_enter_number_state.dart';

class SignupEnterNumberBloc
    extends Bloc<SignupEnterNumberEvent, SignupEnterNumberState> {
  SignupEnterNumberBloc(SignupEnterNumberState initialState)
      : super(initialState) {
    on<SignupEnterNumberInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupEnterNumberInitialEvent event,
    Emitter<SignupEnterNumberState> emit,
  ) async {}
}
