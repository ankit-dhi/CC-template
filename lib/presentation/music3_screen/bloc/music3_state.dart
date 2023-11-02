// ignore_for_file: must_be_immutable

part of 'music3_bloc.dart';

/// Represents the state of Music3 in the application.
class Music3State extends Equatable {
  Music3State({this.music3ModelObj});

  Music3Model? music3ModelObj;

  @override
  List<Object?> get props => [
        music3ModelObj,
      ];
  Music3State copyWith({Music3Model? music3ModelObj}) {
    return Music3State(
      music3ModelObj: music3ModelObj ?? this.music3ModelObj,
    );
  }
}
