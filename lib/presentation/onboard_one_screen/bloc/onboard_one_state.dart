// ignore_for_file: must_be_immutable

part of 'onboard_one_bloc.dart';

class OnboardOneState extends Equatable {
  OnboardOneState({this.onboardOneModelObj});

  OnboardOneModel? onboardOneModelObj;

  @override
  List<Object?> get props => [
        onboardOneModelObj,
      ];
  OnboardOneState copyWith({OnboardOneModel? onboardOneModelObj}) {
    return OnboardOneState(
      onboardOneModelObj: onboardOneModelObj ?? this.onboardOneModelObj,
    );
  }
}
