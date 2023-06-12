import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/your_info_screen/models/your_info_model.dart';
part 'your_info_event.dart';
part 'your_info_state.dart';

class YourInfoBloc extends Bloc<YourInfoEvent, YourInfoState> {
  YourInfoBloc(YourInfoState initialState) : super(initialState) {
    on<YourInfoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    YourInfoInitialEvent event,
    Emitter<YourInfoState> emit,
  ) async {}
}
