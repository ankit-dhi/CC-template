// ignore_for_file: must_be_immutable

part of 'home2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Home2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Home2Event extends Equatable {}

/// Event that is dispatched when the Home2 widget is first created.
class Home2InitialEvent extends Home2Event {
  @override
  List<Object?> get props => [];
}
