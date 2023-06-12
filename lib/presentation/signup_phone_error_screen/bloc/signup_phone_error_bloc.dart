import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/signup_phone_error_screen/models/signup_phone_error_model.dart';
part 'signup_phone_error_event.dart';
part 'signup_phone_error_state.dart';

class SignupPhoneErrorBloc
    extends Bloc<SignupPhoneErrorEvent, SignupPhoneErrorState> {
  SignupPhoneErrorBloc(SignupPhoneErrorState initialState)
      : super(initialState) {
    on<SignupPhoneErrorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupPhoneErrorInitialEvent event,
    Emitter<SignupPhoneErrorState> emit,
  ) async {}
}
