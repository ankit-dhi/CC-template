// ignore_for_file: must_be_immutable

part of 'welcome1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Welcome1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Welcome1Event extends Equatable {}

/// Event that is dispatched when the Welcome1 widget is first created.
class Welcome1InitialEvent extends Welcome1Event {
  @override
  List<Object?> get props => [];
}
