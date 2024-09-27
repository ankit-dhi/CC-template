// ignore_for_file: must_be_immutable

part of 'welcome2_bloc.dart';

/// Represents the state of Welcome2 in the application.
class Welcome2State extends Equatable {
  Welcome2State({this.welcome2ModelObj});

  Welcome2Model? welcome2ModelObj;

  @override
  List<Object?> get props => [
        welcome2ModelObj,
      ];
  Welcome2State copyWith({Welcome2Model? welcome2ModelObj}) {
    return Welcome2State(
      welcome2ModelObj: welcome2ModelObj ?? this.welcome2ModelObj,
    );
  }
}
