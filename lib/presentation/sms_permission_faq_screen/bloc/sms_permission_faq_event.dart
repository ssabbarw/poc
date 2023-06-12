// ignore_for_file: must_be_immutable

part of 'sms_permission_faq_bloc.dart';

@immutable
abstract class SmsPermissionFaqEvent extends Equatable {}

class SmsPermissionFaqInitialEvent extends SmsPermissionFaqEvent {
  @override
  List<Object?> get props => [];
}
