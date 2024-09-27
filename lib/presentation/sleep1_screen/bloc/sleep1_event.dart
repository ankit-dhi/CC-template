// ignore_for_file: must_be_immutable

part of 'sleep1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sleep1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Sleep1Event extends Equatable {}

/// Event that is dispatched when the Sleep1 widget is first created.
class Sleep1InitialEvent extends Sleep1Event {
  @override
  List<Object?> get props => [];
}
