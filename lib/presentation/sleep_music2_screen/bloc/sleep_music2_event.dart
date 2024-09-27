// ignore_for_file: must_be_immutable

part of 'sleep_music2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SleepMusic2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepMusic2Event extends Equatable {}

/// Event that is dispatched when the SleepMusic2 widget is first created.
class SleepMusic2InitialEvent extends SleepMusic2Event {
  @override
  List<Object?> get props => [];
}
