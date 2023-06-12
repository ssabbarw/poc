// ignore_for_file: must_be_immutable

part of 'your_info_skip_bloc.dart';

@immutable
abstract class YourInfoSkipEvent extends Equatable {}

class YourInfoSkipInitialEvent extends YourInfoSkipEvent {
  @override
  List<Object?> get props => [];
}
