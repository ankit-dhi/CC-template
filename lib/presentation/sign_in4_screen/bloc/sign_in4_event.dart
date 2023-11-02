// ignore_for_file: must_be_immutable

part of 'sign_in4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignIn4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignIn4Event extends Equatable {}

/// Event that is dispatched when the SignIn4 widget is first created.
class SignIn4InitialEvent extends SignIn4Event {
  @override
  List<Object?> get props => [];
}
