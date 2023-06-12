import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/verify_account_screen/models/verify_account_model.dart';
part 'verify_account_event.dart';
part 'verify_account_state.dart';

class VerifyAccountBloc extends Bloc<VerifyAccountEvent, VerifyAccountState> {
  VerifyAccountBloc(VerifyAccountState initialState) : super(initialState) {
    on<VerifyAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VerifyAccountInitialEvent event,
    Emitter<VerifyAccountState> emit,
  ) async {}
}
