// ignore_for_file: must_be_immutable

part of 'your_info_bloc.dart';

@immutable
abstract class YourInfoEvent extends Equatable {}

class YourInfoInitialEvent extends YourInfoEvent {
  @override
  List<Object?> get props => [];
}
