// ignore_for_file: must_be_immutable

part of 'sleep_music4_bloc.dart';

/// Represents the state of SleepMusic4 in the application.
class SleepMusic4State extends Equatable {
  SleepMusic4State({this.sleepMusic4ModelObj});

  SleepMusic4Model? sleepMusic4ModelObj;

  @override
  List<Object?> get props => [
        sleepMusic4ModelObj,
      ];
  SleepMusic4State copyWith({SleepMusic4Model? sleepMusic4ModelObj}) {
    return SleepMusic4State(
      sleepMusic4ModelObj: sleepMusic4ModelObj ?? this.sleepMusic4ModelObj,
    );
  }
}
