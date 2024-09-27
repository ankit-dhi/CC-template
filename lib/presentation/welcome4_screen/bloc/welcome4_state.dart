// ignore_for_file: must_be_immutable

part of 'welcome4_bloc.dart';

/// Represents the state of Welcome4 in the application.
class Welcome4State extends Equatable {
  Welcome4State({this.welcome4ModelObj});

  Welcome4Model? welcome4ModelObj;

  @override
  List<Object?> get props => [
        welcome4ModelObj,
      ];
  Welcome4State copyWith({Welcome4Model? welcome4ModelObj}) {
    return Welcome4State(
      welcome4ModelObj: welcome4ModelObj ?? this.welcome4ModelObj,
    );
  }
}
