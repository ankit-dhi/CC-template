// ignore_for_file: must_be_immutable

part of 'music_v6_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MusicV6 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusicV6Event extends Equatable {}

/// Event that is dispatched when the MusicV6 widget is first created.
class MusicV6InitialEvent extends MusicV6Event {
  @override
  List<Object?> get props => [];
}
