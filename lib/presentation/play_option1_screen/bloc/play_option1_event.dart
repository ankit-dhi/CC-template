// ignore_for_file: must_be_immutable

part of 'play_option1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlayOption1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlayOption1Event extends Equatable {}

/// Event that is dispatched when the PlayOption1 widget is first created.
class PlayOption1InitialEvent extends PlayOption1Event {
  @override
  List<Object?> get props => [];
}
