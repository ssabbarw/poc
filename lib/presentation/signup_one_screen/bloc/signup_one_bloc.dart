import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/signup_one_screen/models/signup_one_model.dart';
part 'signup_one_event.dart';
part 'signup_one_state.dart';

class SignupOneBloc extends Bloc<SignupOneEvent, SignupOneState> {
  SignupOneBloc(SignupOneState initialState) : super(initialState) {
    on<SignupOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupOneInitialEvent event,
    Emitter<SignupOneState> emit,
  ) async {}
}
