// ignore_for_file: must_be_immutable

part of 'play_option2_bloc.dart';

/// Represents the state of PlayOption2 in the application.
class PlayOption2State extends Equatable {
  PlayOption2State({this.playOption2ModelObj});

  PlayOption2Model? playOption2ModelObj;

  @override
  List<Object?> get props => [
        playOption2ModelObj,
      ];
  PlayOption2State copyWith({PlayOption2Model? playOption2ModelObj}) {
    return PlayOption2State(
      playOption2ModelObj: playOption2ModelObj ?? this.playOption2ModelObj,
    );
  }
}
