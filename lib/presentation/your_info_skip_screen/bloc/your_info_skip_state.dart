// ignore_for_file: must_be_immutable

part of 'your_info_skip_bloc.dart';

class YourInfoSkipState extends Equatable {
  YourInfoSkipState({this.yourInfoSkipModelObj});

  YourInfoSkipModel? yourInfoSkipModelObj;

  @override
  List<Object?> get props => [
        yourInfoSkipModelObj,
      ];
  YourInfoSkipState copyWith({YourInfoSkipModel? yourInfoSkipModelObj}) {
    return YourInfoSkipState(
      yourInfoSkipModelObj: yourInfoSkipModelObj ?? this.yourInfoSkipModelObj,
    );
  }
}
