// ignore_for_file: must_be_immutable

part of 'music_v4_bloc.dart';

/// Represents the state of MusicV4 in the application.
class MusicV4State extends Equatable {
  MusicV4State({this.musicV4ModelObj});

  MusicV4Model? musicV4ModelObj;

  @override
  List<Object?> get props => [
        musicV4ModelObj,
      ];
  MusicV4State copyWith({MusicV4Model? musicV4ModelObj}) {
    return MusicV4State(
      musicV4ModelObj: musicV4ModelObj ?? this.musicV4ModelObj,
    );
  }
}
