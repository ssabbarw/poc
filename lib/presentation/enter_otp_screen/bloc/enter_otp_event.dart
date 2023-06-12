// ignore_for_file: must_be_immutable

part of 'enter_otp_bloc.dart';

@immutable
abstract class EnterOtpEvent extends Equatable {}

class EnterOtpInitialEvent extends EnterOtpEvent {
  @override
  List<Object?> get props => [];
}
