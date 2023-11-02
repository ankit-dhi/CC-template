// ignore_for_file: must_be_immutable

part of 'sign_up1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUp1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUp1Event extends Equatable {}

/// Event that is dispatched when the SignUp1 widget is first created.
class SignUp1InitialEvent extends SignUp1Event {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignUp1Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
