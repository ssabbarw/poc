// ignore_for_file: must_be_immutable

part of 'signup_one_bloc.dart';

class SignupOneState extends Equatable {
  SignupOneState({this.signupOneModelObj});

  SignupOneModel? signupOneModelObj;

  @override
  List<Object?> get props => [
        signupOneModelObj,
      ];
  SignupOneState copyWith({SignupOneModel? signupOneModelObj}) {
    return SignupOneState(
      signupOneModelObj: signupOneModelObj ?? this.signupOneModelObj,
    );
  }
}
