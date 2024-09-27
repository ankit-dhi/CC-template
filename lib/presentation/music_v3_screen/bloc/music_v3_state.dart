// ignore_for_file: must_be_immutable

part of 'music_v3_bloc.dart';

/// Represents the state of MusicV3 in the application.
class MusicV3State extends Equatable {
  MusicV3State({this.musicV3ModelObj});

  MusicV3Model? musicV3ModelObj;

  @override
  List<Object?> get props => [
        musicV3ModelObj,
      ];
  MusicV3State copyWith({MusicV3Model? musicV3ModelObj}) {
    return MusicV3State(
      musicV3ModelObj: musicV3ModelObj ?? this.musicV3ModelObj,
    );
  }
}
