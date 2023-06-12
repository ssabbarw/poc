// ignore_for_file: must_be_immutable

part of 'otp_error_bloc.dart';

@immutable
abstract class OtpErrorEvent extends Equatable {}

class OtpErrorInitialEvent extends OtpErrorEvent {
  @override
  List<Object?> get props => [];
}
