// ignore_for_file: must_be_immutable

part of 'meditate_v6_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MeditateV6 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MeditateV6Event extends Equatable {}

/// Event that is dispatched when the MeditateV6 widget is first created.
class MeditateV6InitialEvent extends MeditateV6Event {
  @override
  List<Object?> get props => [];
}
