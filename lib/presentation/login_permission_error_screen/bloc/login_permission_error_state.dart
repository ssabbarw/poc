// ignore_for_file: must_be_immutable

part of 'login_permission_error_bloc.dart';

class LoginPermissionErrorState extends Equatable {
  LoginPermissionErrorState({this.loginPermissionErrorModelObj});

  LoginPermissionErrorModel? loginPermissionErrorModelObj;

  @override
  List<Object?> get props => [
        loginPermissionErrorModelObj,
      ];
  LoginPermissionErrorState copyWith(
      {LoginPermissionErrorModel? loginPermissionErrorModelObj}) {
    return LoginPermissionErrorState(
      loginPermissionErrorModelObj:
          loginPermissionErrorModelObj ?? this.loginPermissionErrorModelObj,
    );
  }
}
