// ignore_for_file: must_be_immutable

part of 'signup_phone_error_bloc.dart';

@immutable
abstract class SignupPhoneErrorEvent extends Equatable {}

class SignupPhoneErrorInitialEvent extends SignupPhoneErrorEvent {
  @override
  List<Object?> get props => [];
}
