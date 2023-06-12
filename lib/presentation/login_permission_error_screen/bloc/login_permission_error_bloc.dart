import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/login_permission_error_screen/models/login_permission_error_model.dart';
part 'login_permission_error_event.dart';
part 'login_permission_error_state.dart';

class LoginPermissionErrorBloc
    extends Bloc<LoginPermissionErrorEvent, LoginPermissionErrorState> {
  LoginPermissionErrorBloc(LoginPermissionErrorState initialState)
      : super(initialState) {
    on<LoginPermissionErrorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPermissionErrorInitialEvent event,
    Emitter<LoginPermissionErrorState> emit,
  ) async {}
}
