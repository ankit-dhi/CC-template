// ignore_for_file: must_be_immutable

part of 'welcome_sleep2_bloc.dart';

/// Represents the state of WelcomeSleep2 in the application.
class WelcomeSleep2State extends Equatable {
  WelcomeSleep2State({this.welcomeSleep2ModelObj});

  WelcomeSleep2Model? welcomeSleep2ModelObj;

  @override
  List<Object?> get props => [
        welcomeSleep2ModelObj,
      ];
  WelcomeSleep2State copyWith({WelcomeSleep2Model? welcomeSleep2ModelObj}) {
    return WelcomeSleep2State(
      welcomeSleep2ModelObj:
          welcomeSleep2ModelObj ?? this.welcomeSleep2ModelObj,
    );
  }
}
