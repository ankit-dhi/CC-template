// ignore_for_file: must_be_immutable

part of 'welcome_sleep1_bloc.dart';

/// Represents the state of WelcomeSleep1 in the application.
class WelcomeSleep1State extends Equatable {
  WelcomeSleep1State({this.welcomeSleep1ModelObj});

  WelcomeSleep1Model? welcomeSleep1ModelObj;

  @override
  List<Object?> get props => [
        welcomeSleep1ModelObj,
      ];
  WelcomeSleep1State copyWith({WelcomeSleep1Model? welcomeSleep1ModelObj}) {
    return WelcomeSleep1State(
      welcomeSleep1ModelObj:
          welcomeSleep1ModelObj ?? this.welcomeSleep1ModelObj,
    );
  }
}
