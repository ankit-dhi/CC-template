// ignore_for_file: must_be_immutable

part of 'sleep_music4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SleepMusic4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepMusic4Event extends Equatable {}

/// Event that is dispatched when the SleepMusic4 widget is first created.
class SleepMusic4InitialEvent extends SleepMusic4Event {
  @override
  List<Object?> get props => [];
}
