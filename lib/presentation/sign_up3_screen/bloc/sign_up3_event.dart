// ignore_for_file: must_be_immutable

part of 'sign_up3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUp3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUp3Event extends Equatable {}

/// Event that is dispatched when the SignUp3 widget is first created.
class SignUp3InitialEvent extends SignUp3Event {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignUp3Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
