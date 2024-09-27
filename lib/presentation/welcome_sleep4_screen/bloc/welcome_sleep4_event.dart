// ignore_for_file: must_be_immutable

part of 'welcome_sleep4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeSleep4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeSleep4Event extends Equatable {}

/// Event that is dispatched when the WelcomeSleep4 widget is first created.
class WelcomeSleep4InitialEvent extends WelcomeSleep4Event {
  @override
  List<Object?> get props => [];
}
