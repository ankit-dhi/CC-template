// ignore_for_file: must_be_immutable

part of 'meditate_v2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MeditateV2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MeditateV2Event extends Equatable {}

/// Event that is dispatched when the MeditateV2 widget is first created.
class MeditateV2InitialEvent extends MeditateV2Event {
  @override
  List<Object?> get props => [];
}
