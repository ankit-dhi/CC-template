// ignore_for_file: must_be_immutable

part of 'music_v2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MusicV2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusicV2Event extends Equatable {}

/// Event that is dispatched when the MusicV2 widget is first created.
class MusicV2InitialEvent extends MusicV2Event {
  @override
  List<Object?> get props => [];
}
