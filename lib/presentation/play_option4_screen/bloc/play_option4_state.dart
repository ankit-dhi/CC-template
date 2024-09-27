// ignore_for_file: must_be_immutable

part of 'play_option4_bloc.dart';

/// Represents the state of PlayOption4 in the application.
class PlayOption4State extends Equatable {
  PlayOption4State({this.playOption4ModelObj});

  PlayOption4Model? playOption4ModelObj;

  @override
  List<Object?> get props => [
        playOption4ModelObj,
      ];
  PlayOption4State copyWith({PlayOption4Model? playOption4ModelObj}) {
    return PlayOption4State(
      playOption4ModelObj: playOption4ModelObj ?? this.playOption4ModelObj,
    );
  }
}
