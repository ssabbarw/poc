// ignore_for_file: must_be_immutable

part of 'signup_enter_number_proceed_bloc.dart';

class SignupEnterNumberProceedState extends Equatable {
  SignupEnterNumberProceedState({this.signupEnterNumberProceedModelObj});

  SignupEnterNumberProceedModel? signupEnterNumberProceedModelObj;

  @override
  List<Object?> get props => [
        signupEnterNumberProceedModelObj,
      ];
  SignupEnterNumberProceedState copyWith(
      {SignupEnterNumberProceedModel? signupEnterNumberProceedModelObj}) {
    return SignupEnterNumberProceedState(
      signupEnterNumberProceedModelObj: signupEnterNumberProceedModelObj ??
          this.signupEnterNumberProceedModelObj,
    );
  }
}
