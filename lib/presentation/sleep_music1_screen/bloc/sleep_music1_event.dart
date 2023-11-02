// ignore_for_file: must_be_immutable

part of 'sleep_music1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SleepMusic1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepMusic1Event extends Equatable {}

/// Event that is dispatched when the SleepMusic1 widget is first created.
class SleepMusic1InitialEvent extends SleepMusic1Event {
  @override
  List<Object?> get props => [];
}
