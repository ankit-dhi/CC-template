// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpAndSignIn1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpAndSignIn1Event extends Equatable {}

/// Event that is dispatched when the SignUpAndSignIn1 widget is first created.
class SignUpAndSignIn1InitialEvent extends SignUpAndSignIn1Event {
  @override
  List<Object?> get props => [];
}
