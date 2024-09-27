// ignore_for_file: must_be_immutable

part of 'reminders_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Reminders widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RemindersEvent extends Equatable {}

/// Event that is dispatched when the Reminders widget is first created.
class RemindersInitialEvent extends RemindersEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends RemindersEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
