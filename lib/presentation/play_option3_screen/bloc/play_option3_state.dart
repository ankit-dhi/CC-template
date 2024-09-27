// ignore_for_file: must_be_immutable

part of 'play_option3_bloc.dart';

/// Represents the state of PlayOption3 in the application.
class PlayOption3State extends Equatable {
  PlayOption3State({this.playOption3ModelObj});

  PlayOption3Model? playOption3ModelObj;

  @override
  List<Object?> get props => [
        playOption3ModelObj,
      ];
  PlayOption3State copyWith({PlayOption3Model? playOption3ModelObj}) {
    return PlayOption3State(
      playOption3ModelObj: playOption3ModelObj ?? this.playOption3ModelObj,
    );
  }
}
