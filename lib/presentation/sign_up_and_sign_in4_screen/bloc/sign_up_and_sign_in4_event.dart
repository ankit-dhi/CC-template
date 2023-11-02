// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpAndSignIn4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpAndSignIn4Event extends Equatable {}

/// Event that is dispatched when the SignUpAndSignIn4 widget is first created.
class SignUpAndSignIn4InitialEvent extends SignUpAndSignIn4Event {
  @override
  List<Object?> get props => [];
}
