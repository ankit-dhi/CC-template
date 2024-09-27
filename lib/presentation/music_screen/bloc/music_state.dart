// ignore_for_file: must_be_immutable

part of 'music_bloc.dart';

/// Represents the state of Music in the application.
class MusicState extends Equatable {
  MusicState({this.musicModelObj});

  MusicModel? musicModelObj;

  @override
  List<Object?> get props => [
        musicModelObj,
      ];
  MusicState copyWith({MusicModel? musicModelObj}) {
    return MusicState(
      musicModelObj: musicModelObj ?? this.musicModelObj,
    );
  }
}
