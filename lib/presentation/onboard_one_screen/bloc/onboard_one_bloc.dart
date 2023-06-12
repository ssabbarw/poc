import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/onboard_one_screen/models/onboard_one_model.dart';
part 'onboard_one_event.dart';
part 'onboard_one_state.dart';

class OnboardOneBloc extends Bloc<OnboardOneEvent, OnboardOneState> {
  OnboardOneBloc(OnboardOneState initialState) : super(initialState) {
    on<OnboardOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardOneInitialEvent event,
    Emitter<OnboardOneState> emit,
  ) async {}
}
