// ignore_for_file: must_be_immutable

part of 'music_v6_bloc.dart';

/// Represents the state of MusicV6 in the application.
class MusicV6State extends Equatable {
  MusicV6State({this.musicV6ModelObj});

  MusicV6Model? musicV6ModelObj;

  @override
  List<Object?> get props => [
        musicV6ModelObj,
      ];
  MusicV6State copyWith({MusicV6Model? musicV6ModelObj}) {
    return MusicV6State(
      musicV6ModelObj: musicV6ModelObj ?? this.musicV6ModelObj,
    );
  }
}
