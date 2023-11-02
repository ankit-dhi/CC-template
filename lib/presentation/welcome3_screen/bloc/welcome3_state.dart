// ignore_for_file: must_be_immutable

part of 'welcome3_bloc.dart';

/// Represents the state of Welcome3 in the application.
class Welcome3State extends Equatable {
  Welcome3State({this.welcome3ModelObj});

  Welcome3Model? welcome3ModelObj;

  @override
  List<Object?> get props => [
        welcome3ModelObj,
      ];
  Welcome3State copyWith({Welcome3Model? welcome3ModelObj}) {
    return Welcome3State(
      welcome3ModelObj: welcome3ModelObj ?? this.welcome3ModelObj,
    );
  }
}
