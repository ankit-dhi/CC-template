// ignore_for_file: must_be_immutable

part of 'sleep_music2_bloc.dart';

/// Represents the state of SleepMusic2 in the application.
class SleepMusic2State extends Equatable {
  SleepMusic2State({this.sleepMusic2ModelObj});

  SleepMusic2Model? sleepMusic2ModelObj;

  @override
  List<Object?> get props => [
        sleepMusic2ModelObj,
      ];
  SleepMusic2State copyWith({SleepMusic2Model? sleepMusic2ModelObj}) {
    return SleepMusic2State(
      sleepMusic2ModelObj: sleepMusic2ModelObj ?? this.sleepMusic2ModelObj,
    );
  }
}
