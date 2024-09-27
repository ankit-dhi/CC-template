// ignore_for_file: must_be_immutable

part of 'music_v3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MusicV3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusicV3Event extends Equatable {}

/// Event that is dispatched when the MusicV3 widget is first created.
class MusicV3InitialEvent extends MusicV3Event {
  @override
  List<Object?> get props => [];
}
