// ignore_for_file: must_be_immutable

part of 'reminders4_bloc.dart';

/// Represents the state of Reminders4 in the application.
class Reminders4State extends Equatable {
  Reminders4State({this.reminders4ModelObj});

  Reminders4Model? reminders4ModelObj;

  @override
  List<Object?> get props => [
        reminders4ModelObj,
      ];
  Reminders4State copyWith({Reminders4Model? reminders4ModelObj}) {
    return Reminders4State(
      reminders4ModelObj: reminders4ModelObj ?? this.reminders4ModelObj,
    );
  }
}
