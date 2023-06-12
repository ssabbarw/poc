// ignore_for_file: must_be_immutable

part of 'onboard_three_bloc.dart';

@immutable
abstract class OnboardThreeEvent extends Equatable {}

class OnboardThreeInitialEvent extends OnboardThreeEvent {
  @override
  List<Object?> get props => [];
}
