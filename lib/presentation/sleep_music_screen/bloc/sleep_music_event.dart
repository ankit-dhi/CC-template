// ignore_for_file: must_be_immutable

part of 'sleep_music_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SleepMusic widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SleepMusicEvent extends Equatable {}

/// Event that is dispatched when the SleepMusic widget is first created.
class SleepMusicInitialEvent extends SleepMusicEvent {
  @override
  List<Object?> get props => [];
}
