// ignore_for_file: must_be_immutable

part of 'home4_bloc.dart';

/// Represents the state of Home4 in the application.
class Home4State extends Equatable {
  Home4State({this.home4ModelObj});

  Home4Model? home4ModelObj;

  @override
  List<Object?> get props => [
        home4ModelObj,
      ];
  Home4State copyWith({Home4Model? home4ModelObj}) {
    return Home4State(
      home4ModelObj: home4ModelObj ?? this.home4ModelObj,
    );
  }
}
