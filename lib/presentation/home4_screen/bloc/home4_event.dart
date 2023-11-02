// ignore_for_file: must_be_immutable

part of 'home4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Home4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Home4Event extends Equatable {}

/// Event that is dispatched when the Home4 widget is first created.
class Home4InitialEvent extends Home4Event {
  @override
  List<Object?> get props => [];
}
