// ignore_for_file: must_be_immutable

part of 'sms_permission_faq_bloc.dart';

class SmsPermissionFaqState extends Equatable {
  SmsPermissionFaqState({this.smsPermissionFaqModelObj});

  SmsPermissionFaqModel? smsPermissionFaqModelObj;

  @override
  List<Object?> get props => [
        smsPermissionFaqModelObj,
      ];
  SmsPermissionFaqState copyWith(
      {SmsPermissionFaqModel? smsPermissionFaqModelObj}) {
    return SmsPermissionFaqState(
      smsPermissionFaqModelObj:
          smsPermissionFaqModelObj ?? this.smsPermissionFaqModelObj,
    );
  }
}
