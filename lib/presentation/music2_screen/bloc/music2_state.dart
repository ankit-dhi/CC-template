// ignore_for_file: must_be_immutable

part of 'music2_bloc.dart';

/// Represents the state of Music2 in the application.
class Music2State extends Equatable {
  Music2State({this.music2ModelObj});

  Music2Model? music2ModelObj;

  @override
  List<Object?> get props => [
        music2ModelObj,
      ];
  Music2State copyWith({Music2Model? music2ModelObj}) {
    return Music2State(
      music2ModelObj: music2ModelObj ?? this.music2ModelObj,
    );
  }
}
