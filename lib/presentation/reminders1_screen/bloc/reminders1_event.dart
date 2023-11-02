// ignore_for_file: must_be_immutable

part of 'reminders1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Reminders1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Reminders1Event extends Equatable {}

/// Event that is dispatched when the Reminders1 widget is first created.
class Reminders1InitialEvent extends Reminders1Event {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends Reminders1Event {
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
