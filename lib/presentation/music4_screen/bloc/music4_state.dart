// ignore_for_file: must_be_immutable

part of 'music4_bloc.dart';

/// Represents the state of Music4 in the application.
class Music4State extends Equatable {
  Music4State({this.music4ModelObj});

  Music4Model? music4ModelObj;

  @override
  List<Object?> get props => [
        music4ModelObj,
      ];
  Music4State copyWith({Music4Model? music4ModelObj}) {
    return Music4State(
      music4ModelObj: music4ModelObj ?? this.music4ModelObj,
    );
  }
}
