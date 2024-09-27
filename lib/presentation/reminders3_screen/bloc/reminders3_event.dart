// ignore_for_file: must_be_immutable

part of 'reminders3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Reminders3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Reminders3Event extends Equatable {}

/// Event that is dispatched when the Reminders3 widget is first created.
class Reminders3InitialEvent extends Reminders3Event {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends Reminders3Event {
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
