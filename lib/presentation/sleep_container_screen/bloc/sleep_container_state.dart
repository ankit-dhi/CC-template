// ignore_for_file: must_be_immutable

part of 'sleep_container_bloc.dart';

/// Represents the state of SleepContainer in the application.
class SleepContainerState extends Equatable {
  SleepContainerState({this.sleepContainerModelObj});

  SleepContainerModel? sleepContainerModelObj;

  @override
  List<Object?> get props => [
        sleepContainerModelObj,
      ];
  SleepContainerState copyWith({SleepContainerModel? sleepContainerModelObj}) {
    return SleepContainerState(
      sleepContainerModelObj:
          sleepContainerModelObj ?? this.sleepContainerModelObj,
    );
  }
}
