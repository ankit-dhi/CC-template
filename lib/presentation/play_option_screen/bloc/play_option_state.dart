// ignore_for_file: must_be_immutable

part of 'play_option_bloc.dart';

/// Represents the state of PlayOption in the application.
class PlayOptionState extends Equatable {
  PlayOptionState({this.playOptionModelObj});

  PlayOptionModel? playOptionModelObj;

  @override
  List<Object?> get props => [
        playOptionModelObj,
      ];
  PlayOptionState copyWith({PlayOptionModel? playOptionModelObj}) {
    return PlayOptionState(
      playOptionModelObj: playOptionModelObj ?? this.playOptionModelObj,
    );
  }
}
