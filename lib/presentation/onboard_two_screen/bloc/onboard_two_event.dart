// ignore_for_file: must_be_immutable

part of 'onboard_two_bloc.dart';

@immutable
abstract class OnboardTwoEvent extends Equatable {}

class OnboardTwoInitialEvent extends OnboardTwoEvent {
  @override
  List<Object?> get props => [];
}
