import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/your_info_skip_screen/models/your_info_skip_model.dart';
part 'your_info_skip_event.dart';
part 'your_info_skip_state.dart';

class YourInfoSkipBloc extends Bloc<YourInfoSkipEvent, YourInfoSkipState> {
  YourInfoSkipBloc(YourInfoSkipState initialState) : super(initialState) {
    on<YourInfoSkipInitialEvent>(_onInitialize);
  }

  _onInitialize(
    YourInfoSkipInitialEvent event,
    Emitter<YourInfoSkipState> emit,
  ) async {}
}
