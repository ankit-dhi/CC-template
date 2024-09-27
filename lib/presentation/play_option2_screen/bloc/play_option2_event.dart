// ignore_for_file: must_be_immutable

part of 'play_option2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlayOption2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlayOption2Event extends Equatable {}

/// Event that is dispatched when the PlayOption2 widget is first created.
class PlayOption2InitialEvent extends PlayOption2Event {
  @override
  List<Object?> get props => [];
}
