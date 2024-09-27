// ignore_for_file: must_be_immutable

part of 'sign_up4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUp4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUp4Event extends Equatable {}

/// Event that is dispatched when the SignUp4 widget is first created.
class SignUp4InitialEvent extends SignUp4Event {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignUp4Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
