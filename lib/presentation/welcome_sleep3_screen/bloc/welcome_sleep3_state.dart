// ignore_for_file: must_be_immutable

part of 'welcome_sleep3_bloc.dart';

/// Represents the state of WelcomeSleep3 in the application.
class WelcomeSleep3State extends Equatable {
  WelcomeSleep3State({this.welcomeSleep3ModelObj});

  WelcomeSleep3Model? welcomeSleep3ModelObj;

  @override
  List<Object?> get props => [
        welcomeSleep3ModelObj,
      ];
  WelcomeSleep3State copyWith({WelcomeSleep3Model? welcomeSleep3ModelObj}) {
    return WelcomeSleep3State(
      welcomeSleep3ModelObj:
          welcomeSleep3ModelObj ?? this.welcomeSleep3ModelObj,
    );
  }
}
