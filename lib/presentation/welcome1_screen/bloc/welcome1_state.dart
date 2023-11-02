// ignore_for_file: must_be_immutable

part of 'welcome1_bloc.dart';

/// Represents the state of Welcome1 in the application.
class Welcome1State extends Equatable {
  Welcome1State({this.welcome1ModelObj});

  Welcome1Model? welcome1ModelObj;

  @override
  List<Object?> get props => [
        welcome1ModelObj,
      ];
  Welcome1State copyWith({Welcome1Model? welcome1ModelObj}) {
    return Welcome1State(
      welcome1ModelObj: welcome1ModelObj ?? this.welcome1ModelObj,
    );
  }
}
