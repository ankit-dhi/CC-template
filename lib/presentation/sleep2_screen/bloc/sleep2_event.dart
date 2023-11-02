// ignore_for_file: must_be_immutable

part of 'sleep2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sleep2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Sleep2Event extends Equatable {}

/// Event that is dispatched when the Sleep2 widget is first created.
class Sleep2InitialEvent extends Sleep2Event {
  @override
  List<Object?> get props => [];
}
