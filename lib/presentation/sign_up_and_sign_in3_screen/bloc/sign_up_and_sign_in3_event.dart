// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpAndSignIn3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpAndSignIn3Event extends Equatable {}

/// Event that is dispatched when the SignUpAndSignIn3 widget is first created.
class SignUpAndSignIn3InitialEvent extends SignUpAndSignIn3Event {
  @override
  List<Object?> get props => [];
}
