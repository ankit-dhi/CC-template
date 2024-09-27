// ignore_for_file: must_be_immutable

part of 'reminders_bloc.dart';

/// Represents the state of Reminders in the application.
class RemindersState extends Equatable {
  RemindersState({this.remindersModelObj});

  RemindersModel? remindersModelObj;

  @override
  List<Object?> get props => [
        remindersModelObj,
      ];
  RemindersState copyWith({RemindersModel? remindersModelObj}) {
    return RemindersState(
      remindersModelObj: remindersModelObj ?? this.remindersModelObj,
    );
  }
}
