// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpAndSignIn2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpAndSignIn2Event extends Equatable {}

/// Event that is dispatched when the SignUpAndSignIn2 widget is first created.
class SignUpAndSignIn2InitialEvent extends SignUpAndSignIn2Event {
  @override
  List<Object?> get props => [];
}
