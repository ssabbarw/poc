// ignore_for_file: must_be_immutable

part of 'login_permission_popup_bloc.dart';

@immutable
abstract class LoginPermissionPopupEvent extends Equatable {}

class LoginPermissionPopupInitialEvent extends LoginPermissionPopupEvent {
  @override
  List<Object?> get props => [];
}
