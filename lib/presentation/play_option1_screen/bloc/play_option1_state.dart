// ignore_for_file: must_be_immutable

part of 'play_option1_bloc.dart';

/// Represents the state of PlayOption1 in the application.
class PlayOption1State extends Equatable {
  PlayOption1State({this.playOption1ModelObj});

  PlayOption1Model? playOption1ModelObj;

  @override
  List<Object?> get props => [
        playOption1ModelObj,
      ];
  PlayOption1State copyWith({PlayOption1Model? playOption1ModelObj}) {
    return PlayOption1State(
      playOption1ModelObj: playOption1ModelObj ?? this.playOption1ModelObj,
    );
  }
}
