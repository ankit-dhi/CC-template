// ignore_for_file: must_be_immutable

part of 'sleep4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sleep4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Sleep4Event extends Equatable {}

/// Event that is dispatched when the Sleep4 widget is first created.
class Sleep4InitialEvent extends Sleep4Event {
  @override
  List<Object?> get props => [];
}
