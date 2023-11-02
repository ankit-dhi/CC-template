// ignore_for_file: must_be_immutable

part of 'sleep4_bloc.dart';

/// Represents the state of Sleep4 in the application.
class Sleep4State extends Equatable {
  Sleep4State({this.sleep4ModelObj});

  Sleep4Model? sleep4ModelObj;

  @override
  List<Object?> get props => [
        sleep4ModelObj,
      ];
  Sleep4State copyWith({Sleep4Model? sleep4ModelObj}) {
    return Sleep4State(
      sleep4ModelObj: sleep4ModelObj ?? this.sleep4ModelObj,
    );
  }
}
