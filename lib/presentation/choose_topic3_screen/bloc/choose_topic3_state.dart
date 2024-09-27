// ignore_for_file: must_be_immutable

part of 'choose_topic3_bloc.dart';

/// Represents the state of ChooseTopic3 in the application.
class ChooseTopic3State extends Equatable {
  ChooseTopic3State({this.chooseTopic3ModelObj});

  ChooseTopic3Model? chooseTopic3ModelObj;

  @override
  List<Object?> get props => [
        chooseTopic3ModelObj,
      ];
  ChooseTopic3State copyWith({ChooseTopic3Model? chooseTopic3ModelObj}) {
    return ChooseTopic3State(
      chooseTopic3ModelObj: chooseTopic3ModelObj ?? this.chooseTopic3ModelObj,
    );
  }
}
