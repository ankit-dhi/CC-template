// ignore_for_file: must_be_immutable

part of 'reminders3_bloc.dart';

/// Represents the state of Reminders3 in the application.
class Reminders3State extends Equatable {
  Reminders3State({this.reminders3ModelObj});

  Reminders3Model? reminders3ModelObj;

  @override
  List<Object?> get props => [
        reminders3ModelObj,
      ];
  Reminders3State copyWith({Reminders3Model? reminders3ModelObj}) {
    return Reminders3State(
      reminders3ModelObj: reminders3ModelObj ?? this.reminders3ModelObj,
    );
  }
}
