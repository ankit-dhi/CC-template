// ignore_for_file: must_be_immutable

part of 'reminders2_bloc.dart';

/// Represents the state of Reminders2 in the application.
class Reminders2State extends Equatable {
  Reminders2State({this.reminders2ModelObj});

  Reminders2Model? reminders2ModelObj;

  @override
  List<Object?> get props => [
        reminders2ModelObj,
      ];
  Reminders2State copyWith({Reminders2Model? reminders2ModelObj}) {
    return Reminders2State(
      reminders2ModelObj: reminders2ModelObj ?? this.reminders2ModelObj,
    );
  }
}
