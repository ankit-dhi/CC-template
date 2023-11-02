// ignore_for_file: must_be_immutable

part of 'sleep_music3_bloc.dart';

/// Represents the state of SleepMusic3 in the application.
class SleepMusic3State extends Equatable {
  SleepMusic3State({this.sleepMusic3ModelObj});

  SleepMusic3Model? sleepMusic3ModelObj;

  @override
  List<Object?> get props => [
        sleepMusic3ModelObj,
      ];
  SleepMusic3State copyWith({SleepMusic3Model? sleepMusic3ModelObj}) {
    return SleepMusic3State(
      sleepMusic3ModelObj: sleepMusic3ModelObj ?? this.sleepMusic3ModelObj,
    );
  }
}
