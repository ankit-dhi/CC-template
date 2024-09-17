// ignore_for_file: must_be_immutable

part of 'sleep_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SleepContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepContainerEvent extends Equatable {}

/// Event that is dispatched when the SleepContainer widget is first created.
class SleepContainerInitialEvent extends SleepContainerEvent {
  @override
  List<Object?> get props => [];
}
