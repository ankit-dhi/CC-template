// ignore_for_file: must_be_immutable

part of 'music3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Music3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Music3Event extends Equatable {}

/// Event that is dispatched when the Music3 widget is first created.
class Music3InitialEvent extends Music3Event {
  @override
  List<Object?> get props => [];
}
