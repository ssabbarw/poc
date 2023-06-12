// ignore_for_file: must_be_immutable

part of 'your_info_bloc.dart';

class YourInfoState extends Equatable {
  YourInfoState({this.yourInfoModelObj});

  YourInfoModel? yourInfoModelObj;

  @override
  List<Object?> get props => [
        yourInfoModelObj,
      ];
  YourInfoState copyWith({YourInfoModel? yourInfoModelObj}) {
    return YourInfoState(
      yourInfoModelObj: yourInfoModelObj ?? this.yourInfoModelObj,
    );
  }
}
