// ignore_for_file: must_be_immutable

part of 'choose_topic3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseTopic3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseTopic3Event extends Equatable {}

/// Event that is dispatched when the ChooseTopic3 widget is first created.
class ChooseTopic3InitialEvent extends ChooseTopic3Event {
  @override
  List<Object?> get props => [];
}
