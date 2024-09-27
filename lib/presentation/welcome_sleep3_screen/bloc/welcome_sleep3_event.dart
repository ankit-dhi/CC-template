// ignore_for_file: must_be_immutable

part of 'welcome_sleep3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeSleep3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeSleep3Event extends Equatable {}

/// Event that is dispatched when the WelcomeSleep3 widget is first created.
class WelcomeSleep3InitialEvent extends WelcomeSleep3Event {
  @override
  List<Object?> get props => [];
}
