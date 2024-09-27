// ignore_for_file: must_be_immutable

part of 'sleep_music3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SleepMusic3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepMusic3Event extends Equatable {}

/// Event that is dispatched when the SleepMusic3 widget is first created.
class SleepMusic3InitialEvent extends SleepMusic3Event {
  @override
  List<Object?> get props => [];
}
