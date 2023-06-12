// ignore_for_file: must_be_immutable

part of 'signup_phone_error_bloc.dart';

class SignupPhoneErrorState extends Equatable {
  SignupPhoneErrorState({this.signupPhoneErrorModelObj});

  SignupPhoneErrorModel? signupPhoneErrorModelObj;

  @override
  List<Object?> get props => [
        signupPhoneErrorModelObj,
      ];
  SignupPhoneErrorState copyWith(
      {SignupPhoneErrorModel? signupPhoneErrorModelObj}) {
    return SignupPhoneErrorState(
      signupPhoneErrorModelObj:
          signupPhoneErrorModelObj ?? this.signupPhoneErrorModelObj,
    );
  }
}
