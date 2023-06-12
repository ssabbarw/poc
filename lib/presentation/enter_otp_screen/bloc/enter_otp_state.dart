// ignore_for_file: must_be_immutable

part of 'enter_otp_bloc.dart';

class EnterOtpState extends Equatable {
  EnterOtpState({this.enterOtpModelObj});

  EnterOtpModel? enterOtpModelObj;

  @override
  List<Object?> get props => [
        enterOtpModelObj,
      ];
  EnterOtpState copyWith({EnterOtpModel? enterOtpModelObj}) {
    return EnterOtpState(
      enterOtpModelObj: enterOtpModelObj ?? this.enterOtpModelObj,
    );
  }
}
