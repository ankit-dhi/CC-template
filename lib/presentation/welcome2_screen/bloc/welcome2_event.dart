// ignore_for_file: must_be_immutable

part of 'welcome2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Welcome2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Welcome2Event extends Equatable {}

/// Event that is dispatched when the Welcome2 widget is first created.
class Welcome2InitialEvent extends Welcome2Event {
  @override
  List<Object?> get props => [];
}
