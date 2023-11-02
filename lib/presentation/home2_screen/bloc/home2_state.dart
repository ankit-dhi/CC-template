// ignore_for_file: must_be_immutable

part of 'home2_bloc.dart';

/// Represents the state of Home2 in the application.
class Home2State extends Equatable {
  Home2State({this.home2ModelObj});

  Home2Model? home2ModelObj;

  @override
  List<Object?> get props => [
        home2ModelObj,
      ];
  Home2State copyWith({Home2Model? home2ModelObj}) {
    return Home2State(
      home2ModelObj: home2ModelObj ?? this.home2ModelObj,
    );
  }
}
