// ignore_for_file: must_be_immutable

part of 'sleep_music_bloc.dart';

/// Represents the state of SleepMusic in the application.
class SleepMusicState extends Equatable {
  SleepMusicState({this.sleepMusicModelObj});

  SleepMusicModel? sleepMusicModelObj;

  @override
  List<Object?> get props => [
        sleepMusicModelObj,
      ];
  SleepMusicState copyWith({SleepMusicModel? sleepMusicModelObj}) {
    return SleepMusicState(
      sleepMusicModelObj: sleepMusicModelObj ?? this.sleepMusicModelObj,
    );
  }
}
