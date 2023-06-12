import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/enter_otp_screen/models/enter_otp_model.dart';
part 'enter_otp_event.dart';
part 'enter_otp_state.dart';

class EnterOtpBloc extends Bloc<EnterOtpEvent, EnterOtpState> {
  EnterOtpBloc(EnterOtpState initialState) : super(initialState) {
    on<EnterOtpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EnterOtpInitialEvent event,
    Emitter<EnterOtpState> emit,
  ) async {}
}
