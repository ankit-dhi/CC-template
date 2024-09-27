// ignore_for_file: must_be_immutable

part of 'sleep3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sleep3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Sleep3Event extends Equatable {}

/// Event that is dispatched when the Sleep3 widget is first created.
class Sleep3InitialEvent extends Sleep3Event {
  @override
  List<Object?> get props => [];
}
