// ignore_for_file: must_be_immutable

part of 'reminders2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Reminders2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Reminders2Event extends Equatable {}

/// Event that is dispatched when the Reminders2 widget is first created.
class Reminders2InitialEvent extends Reminders2Event {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends Reminders2Event {
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
