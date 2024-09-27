// ignore_for_file: must_be_immutable

part of 'music1_bloc.dart';

/// Represents the state of Music1 in the application.
class Music1State extends Equatable {
  Music1State({this.music1ModelObj});

  Music1Model? music1ModelObj;

  @override
  List<Object?> get props => [
        music1ModelObj,
      ];
  Music1State copyWith({Music1Model? music1ModelObj}) {
    return Music1State(
      music1ModelObj: music1ModelObj ?? this.music1ModelObj,
    );
  }
}
