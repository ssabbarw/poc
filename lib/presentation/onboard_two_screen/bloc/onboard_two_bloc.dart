import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/onboard_two_screen/models/onboard_two_model.dart';
part 'onboard_two_event.dart';
part 'onboard_two_state.dart';

class OnboardTwoBloc extends Bloc<OnboardTwoEvent, OnboardTwoState> {
  OnboardTwoBloc(OnboardTwoState initialState) : super(initialState) {
    on<OnboardTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardTwoInitialEvent event,
    Emitter<OnboardTwoState> emit,
  ) async {}
}
