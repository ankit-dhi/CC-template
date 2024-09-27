// ignore_for_file: must_be_immutable

part of 'music_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Music widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusicEvent extends Equatable {}

/// Event that is dispatched when the Music widget is first created.
class MusicInitialEvent extends MusicEvent {
  @override
  List<Object?> get props => [];
}
