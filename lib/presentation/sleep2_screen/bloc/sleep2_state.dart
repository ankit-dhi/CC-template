// ignore_for_file: must_be_immutable

part of 'sleep2_bloc.dart';

/// Represents the state of Sleep2 in the application.
class Sleep2State extends Equatable {
  Sleep2State({this.sleep2ModelObj});

  Sleep2Model? sleep2ModelObj;

  @override
  List<Object?> get props => [
        sleep2ModelObj,
      ];
  Sleep2State copyWith({Sleep2Model? sleep2ModelObj}) {
    return Sleep2State(
      sleep2ModelObj: sleep2ModelObj ?? this.sleep2ModelObj,
    );
  }
}
