// ignore_for_file: must_be_immutable

part of 'home3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Home3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Home3Event extends Equatable {}

/// Event that is dispatched when the Home3 widget is first created.
class Home3InitialEvent extends Home3Event {
  @override
  List<Object?> get props => [];
}
