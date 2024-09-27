// ignore_for_file: must_be_immutable

part of 'welcome_sleep_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeSleep widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeSleepEvent extends Equatable {}

/// Event that is dispatched when the WelcomeSleep widget is first created.
class WelcomeSleepInitialEvent extends WelcomeSleepEvent {
  @override
  List<Object?> get props => [];
}
