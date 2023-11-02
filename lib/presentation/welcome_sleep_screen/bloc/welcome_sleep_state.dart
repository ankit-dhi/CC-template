// ignore_for_file: must_be_immutable

part of 'welcome_sleep_bloc.dart';

/// Represents the state of WelcomeSleep in the application.
class WelcomeSleepState extends Equatable {
  WelcomeSleepState({this.welcomeSleepModelObj});

  WelcomeSleepModel? welcomeSleepModelObj;

  @override
  List<Object?> get props => [
        welcomeSleepModelObj,
      ];
  WelcomeSleepState copyWith({WelcomeSleepModel? welcomeSleepModelObj}) {
    return WelcomeSleepState(
      welcomeSleepModelObj: welcomeSleepModelObj ?? this.welcomeSleepModelObj,
    );
  }
}
