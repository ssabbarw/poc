// ignore_for_file: must_be_immutable

part of 'verify_account_bloc.dart';

class VerifyAccountState extends Equatable {
  VerifyAccountState({this.verifyAccountModelObj});

  VerifyAccountModel? verifyAccountModelObj;

  @override
  List<Object?> get props => [
        verifyAccountModelObj,
      ];
  VerifyAccountState copyWith({VerifyAccountModel? verifyAccountModelObj}) {
    return VerifyAccountState(
      verifyAccountModelObj:
          verifyAccountModelObj ?? this.verifyAccountModelObj,
    );
  }
}
