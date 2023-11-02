// ignore_for_file: must_be_immutable

part of 'welcome_sleep2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeSleep2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeSleep2Event extends Equatable {}

/// Event that is dispatched when the WelcomeSleep2 widget is first created.
class WelcomeSleep2InitialEvent extends WelcomeSleep2Event {
  @override
  List<Object?> get props => [];
}
