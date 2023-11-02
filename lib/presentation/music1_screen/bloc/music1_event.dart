// ignore_for_file: must_be_immutable

part of 'music1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Music1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Music1Event extends Equatable {}

/// Event that is dispatched when the Music1 widget is first created.
class Music1InitialEvent extends Music1Event {
  @override
  List<Object?> get props => [];
}
