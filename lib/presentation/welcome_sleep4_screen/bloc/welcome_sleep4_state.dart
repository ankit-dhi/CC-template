// ignore_for_file: must_be_immutable

part of 'welcome_sleep4_bloc.dart';

/// Represents the state of WelcomeSleep4 in the application.
class WelcomeSleep4State extends Equatable {
  WelcomeSleep4State({this.welcomeSleep4ModelObj});

  WelcomeSleep4Model? welcomeSleep4ModelObj;

  @override
  List<Object?> get props => [
        welcomeSleep4ModelObj,
      ];
  WelcomeSleep4State copyWith({WelcomeSleep4Model? welcomeSleep4ModelObj}) {
    return WelcomeSleep4State(
      welcomeSleep4ModelObj:
          welcomeSleep4ModelObj ?? this.welcomeSleep4ModelObj,
    );
  }
}
