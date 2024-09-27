// ignore_for_file: must_be_immutable

part of 'music_v4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MusicV4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusicV4Event extends Equatable {}

/// Event that is dispatched when the MusicV4 widget is first created.
class MusicV4InitialEvent extends MusicV4Event {
  @override
  List<Object?> get props => [];
}
