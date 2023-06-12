// ignore_for_file: must_be_immutable

part of 'verify_account_bloc.dart';

@immutable
abstract class VerifyAccountEvent extends Equatable {}

class VerifyAccountInitialEvent extends VerifyAccountEvent {
  @override
  List<Object?> get props => [];
}
