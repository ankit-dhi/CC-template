// ignore_for_file: must_be_immutable

part of 'meditate_v3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MeditateV3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MeditateV3Event extends Equatable {}

/// Event that is dispatched when the MeditateV3 widget is first created.
class MeditateV3InitialEvent extends MeditateV3Event {
  @override
  List<Object?> get props => [];
}
