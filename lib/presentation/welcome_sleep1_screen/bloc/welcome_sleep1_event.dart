// ignore_for_file: must_be_immutable

part of 'welcome_sleep1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeSleep1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeSleep1Event extends Equatable {}

/// Event that is dispatched when the WelcomeSleep1 widget is first created.
class WelcomeSleep1InitialEvent extends WelcomeSleep1Event {
  @override
  List<Object?> get props => [];
}
