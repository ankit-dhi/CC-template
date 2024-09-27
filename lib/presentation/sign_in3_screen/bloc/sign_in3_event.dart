// ignore_for_file: must_be_immutable

part of 'sign_in3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignIn3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignIn3Event extends Equatable {}

/// Event that is dispatched when the SignIn3 widget is first created.
class SignIn3InitialEvent extends SignIn3Event {
  @override
  List<Object?> get props => [];
}
