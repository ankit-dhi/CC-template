// ignore_for_file: must_be_immutable

part of 'sleep3_bloc.dart';

/// Represents the state of Sleep3 in the application.
class Sleep3State extends Equatable {
  Sleep3State({this.sleep3ModelObj});

  Sleep3Model? sleep3ModelObj;

  @override
  List<Object?> get props => [
        sleep3ModelObj,
      ];
  Sleep3State copyWith({Sleep3Model? sleep3ModelObj}) {
    return Sleep3State(
      sleep3ModelObj: sleep3ModelObj ?? this.sleep3ModelObj,
    );
  }
}
