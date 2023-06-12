// ignore_for_file: must_be_immutable

part of 'signup_enter_number_bloc.dart';

class SignupEnterNumberState extends Equatable {
  SignupEnterNumberState({this.signupEnterNumberModelObj});

  SignupEnterNumberModel? signupEnterNumberModelObj;

  @override
  List<Object?> get props => [
        signupEnterNumberModelObj,
      ];
  SignupEnterNumberState copyWith(
      {SignupEnterNumberModel? signupEnterNumberModelObj}) {
    return SignupEnterNumberState(
      signupEnterNumberModelObj:
          signupEnterNumberModelObj ?? this.signupEnterNumberModelObj,
    );
  }
}
