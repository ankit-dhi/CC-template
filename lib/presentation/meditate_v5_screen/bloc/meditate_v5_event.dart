// ignore_for_file: must_be_immutable

part of 'meditate_v5_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MeditateV5 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MeditateV5Event extends Equatable {}

/// Event that is dispatched when the MeditateV5 widget is first created.
class MeditateV5InitialEvent extends MeditateV5Event {
  @override
  List<Object?> get props => [];
}
