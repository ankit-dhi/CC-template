// ignore_for_file: must_be_immutable

part of 'sign_up2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUp2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUp2Event extends Equatable {}

/// Event that is dispatched when the SignUp2 widget is first created.
class SignUp2InitialEvent extends SignUp2Event {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignUp2Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
