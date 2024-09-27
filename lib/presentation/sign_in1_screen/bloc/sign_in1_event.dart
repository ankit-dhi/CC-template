// ignore_for_file: must_be_immutable

part of 'sign_in1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignIn1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignIn1Event extends Equatable {}

/// Event that is dispatched when the SignIn1 widget is first created.
class SignIn1InitialEvent extends SignIn1Event {
  @override
  List<Object?> get props => [];
}
