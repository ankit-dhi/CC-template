// ignore_for_file: must_be_immutable

part of 'meditate_v4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MeditateV4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MeditateV4Event extends Equatable {}

/// Event that is dispatched when the MeditateV4 widget is first created.
class MeditateV4InitialEvent extends MeditateV4Event {
  @override
  List<Object?> get props => [];
}
