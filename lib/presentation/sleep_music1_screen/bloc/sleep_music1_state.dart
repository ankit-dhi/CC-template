// ignore_for_file: must_be_immutable

part of 'sleep_music1_bloc.dart';

/// Represents the state of SleepMusic1 in the application.
class SleepMusic1State extends Equatable {
  SleepMusic1State({this.sleepMusic1ModelObj});

  SleepMusic1Model? sleepMusic1ModelObj;

  @override
  List<Object?> get props => [
        sleepMusic1ModelObj,
      ];
  SleepMusic1State copyWith({SleepMusic1Model? sleepMusic1ModelObj}) {
    return SleepMusic1State(
      sleepMusic1ModelObj: sleepMusic1ModelObj ?? this.sleepMusic1ModelObj,
    );
  }
}
