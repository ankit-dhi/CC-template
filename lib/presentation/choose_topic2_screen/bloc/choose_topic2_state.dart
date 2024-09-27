// ignore_for_file: must_be_immutable

part of 'choose_topic2_bloc.dart';

/// Represents the state of ChooseTopic2 in the application.
class ChooseTopic2State extends Equatable {
  ChooseTopic2State({this.chooseTopic2ModelObj});

  ChooseTopic2Model? chooseTopic2ModelObj;

  @override
  List<Object?> get props => [
        chooseTopic2ModelObj,
      ];
  ChooseTopic2State copyWith({ChooseTopic2Model? chooseTopic2ModelObj}) {
    return ChooseTopic2State(
      chooseTopic2ModelObj: chooseTopic2ModelObj ?? this.chooseTopic2ModelObj,
    );
  }
}
