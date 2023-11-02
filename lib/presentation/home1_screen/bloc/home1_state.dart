// ignore_for_file: must_be_immutable

part of 'home1_bloc.dart';

/// Represents the state of Home1 in the application.
class Home1State extends Equatable {
  Home1State({this.home1ModelObj});

  Home1Model? home1ModelObj;

  @override
  List<Object?> get props => [
        home1ModelObj,
      ];
  Home1State copyWith({Home1Model? home1ModelObj}) {
    return Home1State(
      home1ModelObj: home1ModelObj ?? this.home1ModelObj,
    );
  }
}
