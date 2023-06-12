import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/otp_error_screen/models/otp_error_model.dart';
part 'otp_error_event.dart';
part 'otp_error_state.dart';

class OtpErrorBloc extends Bloc<OtpErrorEvent, OtpErrorState> {
  OtpErrorBloc(OtpErrorState initialState) : super(initialState) {
    on<OtpErrorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OtpErrorInitialEvent event,
    Emitter<OtpErrorState> emit,
  ) async {}
}
