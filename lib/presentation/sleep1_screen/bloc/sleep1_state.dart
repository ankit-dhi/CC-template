// ignore_for_file: must_be_immutable

part of 'sleep1_bloc.dart';

/// Represents the state of Sleep1 in the application.
class Sleep1State extends Equatable {
  Sleep1State({this.sleep1ModelObj});

  Sleep1Model? sleep1ModelObj;

  @override
  List<Object?> get props => [
        sleep1ModelObj,
      ];
  Sleep1State copyWith({Sleep1Model? sleep1ModelObj}) {
    return Sleep1State(
      sleep1ModelObj: sleep1ModelObj ?? this.sleep1ModelObj,
    );
  }
}
