// ignore_for_file: must_be_immutable

part of 'signup_one_bloc.dart';

@immutable
abstract class SignupOneEvent extends Equatable {}

class SignupOneInitialEvent extends SignupOneEvent {
  @override
  List<Object?> get props => [];
}
