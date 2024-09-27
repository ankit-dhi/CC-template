// ignore_for_file: must_be_immutable

part of 'reminders4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Reminders4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Reminders4Event extends Equatable {}

/// Event that is dispatched when the Reminders4 widget is first created.
class Reminders4InitialEvent extends Reminders4Event {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends Reminders4Event {
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
