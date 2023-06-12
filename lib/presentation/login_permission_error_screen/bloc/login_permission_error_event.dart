// ignore_for_file: must_be_immutable

part of 'login_permission_error_bloc.dart';

@immutable
abstract class LoginPermissionErrorEvent extends Equatable {}

class LoginPermissionErrorInitialEvent extends LoginPermissionErrorEvent {
  @override
  List<Object?> get props => [];
}
