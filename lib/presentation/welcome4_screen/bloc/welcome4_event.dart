// ignore_for_file: must_be_immutable

part of 'welcome4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Welcome4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Welcome4Event extends Equatable {}

/// Event that is dispatched when the Welcome4 widget is first created.
class Welcome4InitialEvent extends Welcome4Event {
  @override
  List<Object?> get props => [];
}
