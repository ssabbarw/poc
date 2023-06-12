// ignore_for_file: must_be_immutable

part of 'signup_enter_number_bloc.dart';

@immutable
abstract class SignupEnterNumberEvent extends Equatable {}

class SignupEnterNumberInitialEvent extends SignupEnterNumberEvent {
  @override
  List<Object?> get props => [];
}
