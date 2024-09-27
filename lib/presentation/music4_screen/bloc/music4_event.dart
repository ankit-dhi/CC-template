// ignore_for_file: must_be_immutable

part of 'music4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Music4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Music4Event extends Equatable {}

/// Event that is dispatched when the Music4 widget is first created.
class Music4InitialEvent extends Music4Event {
  @override
  List<Object?> get props => [];
}
