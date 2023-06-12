import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/sms_permission_faq_screen/models/sms_permission_faq_model.dart';
part 'sms_permission_faq_event.dart';
part 'sms_permission_faq_state.dart';

class SmsPermissionFaqBloc
    extends Bloc<SmsPermissionFaqEvent, SmsPermissionFaqState> {
  SmsPermissionFaqBloc(SmsPermissionFaqState initialState)
      : super(initialState) {
    on<SmsPermissionFaqInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SmsPermissionFaqInitialEvent event,
    Emitter<SmsPermissionFaqState> emit,
  ) async {}
}
