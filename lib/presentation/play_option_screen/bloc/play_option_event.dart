// ignore_for_file: must_be_immutable

part of 'play_option_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlayOption widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlayOptionEvent extends Equatable {}

/// Event that is dispatched when the PlayOption widget is first created.
class PlayOptionInitialEvent extends PlayOptionEvent {
  @override
  List<Object?> get props => [];
}
