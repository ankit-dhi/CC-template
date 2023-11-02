// ignore_for_file: must_be_immutable

part of 'reminders1_bloc.dart';

/// Represents the state of Reminders1 in the application.
class Reminders1State extends Equatable {
  Reminders1State({this.reminders1ModelObj});

  Reminders1Model? reminders1ModelObj;

  @override
  List<Object?> get props => [
        reminders1ModelObj,
      ];
  Reminders1State copyWith({Reminders1Model? reminders1ModelObj}) {
    return Reminders1State(
      reminders1ModelObj: reminders1ModelObj ?? this.reminders1ModelObj,
    );
  }
}
