// ignore_for_file: must_be_immutable

part of 'home1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Home1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Home1Event extends Equatable {}

/// Event that is dispatched when the Home1 widget is first created.
class Home1InitialEvent extends Home1Event {
  @override
  List<Object?> get props => [];
}
