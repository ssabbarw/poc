// ignore_for_file: must_be_immutable

part of 'onboard_one_bloc.dart';

@immutable
abstract class OnboardOneEvent extends Equatable {}

class OnboardOneInitialEvent extends OnboardOneEvent {
  @override
  List<Object?> get props => [];
}
