import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sachin_s_application1/presentation/login_permission_popup_screen/models/login_permission_popup_model.dart';
part 'login_permission_popup_event.dart';
part 'login_permission_popup_state.dart';

class LoginPermissionPopupBloc
    extends Bloc<LoginPermissionPopupEvent, LoginPermissionPopupState> {
  LoginPermissionPopupBloc(LoginPermissionPopupState initialState)
      : super(initialState) {
    on<LoginPermissionPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPermissionPopupInitialEvent event,
    Emitter<LoginPermissionPopupState> emit,
  ) async {}
}
