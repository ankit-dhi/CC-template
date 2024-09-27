// ignore_for_file: must_be_immutable

part of 'choose_topic2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseTopic2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseTopic2Event extends Equatable {}

/// Event that is dispatched when the ChooseTopic2 widget is first created.
class ChooseTopic2InitialEvent extends ChooseTopic2Event {
  @override
  List<Object?> get props => [];
}
