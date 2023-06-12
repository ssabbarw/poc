// ignore_for_file: must_be_immutable

part of 'login_permission_popup_bloc.dart';

class LoginPermissionPopupState extends Equatable {
  LoginPermissionPopupState({this.loginPermissionPopupModelObj});

  LoginPermissionPopupModel? loginPermissionPopupModelObj;

  @override
  List<Object?> get props => [
        loginPermissionPopupModelObj,
      ];
  LoginPermissionPopupState copyWith(
      {LoginPermissionPopupModel? loginPermissionPopupModelObj}) {
    return LoginPermissionPopupState(
      loginPermissionPopupModelObj:
          loginPermissionPopupModelObj ?? this.loginPermissionPopupModelObj,
    );
  }
}
