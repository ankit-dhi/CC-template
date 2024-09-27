// ignore_for_file: must_be_immutable

part of 'play_option4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlayOption4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlayOption4Event extends Equatable {}

/// Event that is dispatched when the PlayOption4 widget is first created.
class PlayOption4InitialEvent extends PlayOption4Event {
  @override
  List<Object?> get props => [];
}
