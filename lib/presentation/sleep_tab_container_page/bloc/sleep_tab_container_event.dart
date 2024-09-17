// ignore_for_file: must_be_immutable

part of 'sleep_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SleepTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SleepTabContainer widget is first created.
class SleepTabContainerInitialEvent extends SleepTabContainerEvent {
  @override
  List<Object?> get props => [];
}
