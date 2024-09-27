// ignore_for_file: must_be_immutable

part of 'music_v5_bloc.dart';

/// Represents the state of MusicV5 in the application.
class MusicV5State extends Equatable {
  MusicV5State({this.musicV5ModelObj});

  MusicV5Model? musicV5ModelObj;

  @override
  List<Object?> get props => [
        musicV5ModelObj,
      ];
  MusicV5State copyWith({MusicV5Model? musicV5ModelObj}) {
    return MusicV5State(
      musicV5ModelObj: musicV5ModelObj ?? this.musicV5ModelObj,
    );
  }
}
