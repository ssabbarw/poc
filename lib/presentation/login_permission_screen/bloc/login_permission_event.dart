// ignore_for_file: must_be_immutable

part of 'login_permission_bloc.dart';

@immutable
abstract class LoginPermissionEvent extends Equatable {}

class LoginPermissionInitialEvent extends LoginPermissionEvent {
  @override
  List<Object?> get props => [];
}
