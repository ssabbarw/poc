import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/onboard_three_screen/models/onboard_three_model.dart';
part 'onboard_three_event.dart';
part 'onboard_three_state.dart';

class OnboardThreeBloc extends Bloc<OnboardThreeEvent, OnboardThreeState> {
  OnboardThreeBloc(OnboardThreeState initialState) : super(initialState) {
    on<OnboardThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardThreeInitialEvent event,
    Emitter<OnboardThreeState> emit,
  ) async {}
}
