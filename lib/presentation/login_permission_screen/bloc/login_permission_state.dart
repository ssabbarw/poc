// ignore_for_file: must_be_immutable

part of 'login_permission_bloc.dart';

class LoginPermissionState extends Equatable {
  LoginPermissionState({this.loginPermissionModelObj});

  LoginPermissionModel? loginPermissionModelObj;

  @override
  List<Object?> get props => [
        loginPermissionModelObj,
      ];
  LoginPermissionState copyWith(
      {LoginPermissionModel? loginPermissionModelObj}) {
    return LoginPermissionState(
      loginPermissionModelObj:
          loginPermissionModelObj ?? this.loginPermissionModelObj,
    );
  }
}
