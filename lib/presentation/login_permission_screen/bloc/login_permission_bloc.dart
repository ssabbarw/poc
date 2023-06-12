import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/login_permission_screen/models/login_permission_model.dart';
part 'login_permission_event.dart';
part 'login_permission_state.dart';

class LoginPermissionBloc
    extends Bloc<LoginPermissionEvent, LoginPermissionState> {
  LoginPermissionBloc(LoginPermissionState initialState) : super(initialState) {
    on<LoginPermissionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPermissionInitialEvent event,
    Emitter<LoginPermissionState> emit,
  ) async {}
}
