// ignore_for_file: must_be_immutable

part of 'otp_error_bloc.dart';

class OtpErrorState extends Equatable {
  OtpErrorState({this.otpErrorModelObj});

  OtpErrorModel? otpErrorModelObj;

  @override
  List<Object?> get props => [
        otpErrorModelObj,
      ];
  OtpErrorState copyWith({OtpErrorModel? otpErrorModelObj}) {
    return OtpErrorState(
      otpErrorModelObj: otpErrorModelObj ?? this.otpErrorModelObj,
    );
  }
}
