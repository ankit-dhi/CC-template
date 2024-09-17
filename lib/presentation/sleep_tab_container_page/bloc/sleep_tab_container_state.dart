// ignore_for_file: must_be_immutable

part of 'sleep_tab_container_bloc.dart';

/// Represents the state of SleepTabContainer in the application.
class SleepTabContainerState extends Equatable {
  SleepTabContainerState({this.sleepTabContainerModelObj});

  SleepTabContainerModel? sleepTabContainerModelObj;

  @override
  List<Object?> get props => [
        sleepTabContainerModelObj,
      ];
  SleepTabContainerState copyWith(
      {SleepTabContainerModel? sleepTabContainerModelObj}) {
    return SleepTabContainerState(
      sleepTabContainerModelObj:
          sleepTabContainerModelObj ?? this.sleepTabContainerModelObj,
    );
  }
}
