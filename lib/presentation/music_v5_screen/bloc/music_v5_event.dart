// ignore_for_file: must_be_immutable

part of 'music_v5_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MusicV5 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusicV5Event extends Equatable {}

/// Event that is dispatched when the MusicV5 widget is first created.
class MusicV5InitialEvent extends MusicV5Event {
  @override
  List<Object?> get props => [];
}
