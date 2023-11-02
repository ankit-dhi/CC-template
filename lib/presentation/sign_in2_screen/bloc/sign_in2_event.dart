// ignore_for_file: must_be_immutable

part of 'sign_in2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignIn2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignIn2Event extends Equatable {}

/// Event that is dispatched when the SignIn2 widget is first created.
class SignIn2InitialEvent extends SignIn2Event {
  @override
  List<Object?> get props => [];
}
