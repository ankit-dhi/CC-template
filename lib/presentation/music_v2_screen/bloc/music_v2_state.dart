// ignore_for_file: must_be_immutable

part of 'music_v2_bloc.dart';

/// Represents the state of MusicV2 in the application.
class MusicV2State extends Equatable {
  MusicV2State({this.musicV2ModelObj});

  MusicV2Model? musicV2ModelObj;

  @override
  List<Object?> get props => [
        musicV2ModelObj,
      ];
  MusicV2State copyWith({MusicV2Model? musicV2ModelObj}) {
    return MusicV2State(
      musicV2ModelObj: musicV2ModelObj ?? this.musicV2ModelObj,
    );
  }
}
