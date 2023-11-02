// ignore_for_file: must_be_immutable

part of 'welcome3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Welcome3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Welcome3Event extends Equatable {}

/// Event that is dispatched when the Welcome3 widget is first created.
class Welcome3InitialEvent extends Welcome3Event {
  @override
  List<Object?> get props => [];
}
