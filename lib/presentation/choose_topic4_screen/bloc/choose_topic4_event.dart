// ignore_for_file: must_be_immutable

part of 'choose_topic4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseTopic4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseTopic4Event extends Equatable {}

/// Event that is dispatched when the ChooseTopic4 widget is first created.
class ChooseTopic4InitialEvent extends ChooseTopic4Event {
  @override
  List<Object?> get props => [];
}
