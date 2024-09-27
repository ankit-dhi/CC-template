// ignore_for_file: must_be_immutable

part of 'choose_topic_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseTopic widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseTopicEvent extends Equatable {}

/// Event that is dispatched when the ChooseTopic widget is first created.
class ChooseTopicInitialEvent extends ChooseTopicEvent {
  @override
  List<Object?> get props => [];
}
