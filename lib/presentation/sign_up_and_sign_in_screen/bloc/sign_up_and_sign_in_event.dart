// ignore_for_file: must_be_immutable

part of 'sign_up_and_sign_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpAndSignIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpAndSignInEvent extends Equatable {}

/// Event that is dispatched when the SignUpAndSignIn widget is first created.
class SignUpAndSignInInitialEvent extends SignUpAndSignInEvent {
  @override
  List<Object?> get props => [];
}
