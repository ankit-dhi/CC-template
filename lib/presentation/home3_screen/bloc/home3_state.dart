// ignore_for_file: must_be_immutable

part of 'home3_bloc.dart';

/// Represents the state of Home3 in the application.
class Home3State extends Equatable {
  Home3State({this.home3ModelObj});

  Home3Model? home3ModelObj;

  @override
  List<Object?> get props => [
        home3ModelObj,
      ];
  Home3State copyWith({Home3Model? home3ModelObj}) {
    return Home3State(
      home3ModelObj: home3ModelObj ?? this.home3ModelObj,
    );
  }
}
