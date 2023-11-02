// ignore_for_file: must_be_immutable

part of 'music2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Music2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Music2Event extends Equatable {}

/// Event that is dispatched when the Music2 widget is first created.
class Music2InitialEvent extends Music2Event {
  @override
  List<Object?> get props => [];
}
