// ignore_for_file: must_be_immutable

part of 'choose_topic1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseTopic1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseTopic1Event extends Equatable {}

/// Event that is dispatched when the ChooseTopic1 widget is first created.
class ChooseTopic1InitialEvent extends ChooseTopic1Event {
  @override
  List<Object?> get props => [];
}
