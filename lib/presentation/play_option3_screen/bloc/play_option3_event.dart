// ignore_for_file: must_be_immutable

part of 'play_option3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlayOption3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlayOption3Event extends Equatable {}

/// Event that is dispatched when the PlayOption3 widget is first created.
class PlayOption3InitialEvent extends PlayOption3Event {
  @override
  List<Object?> get props => [];
}
