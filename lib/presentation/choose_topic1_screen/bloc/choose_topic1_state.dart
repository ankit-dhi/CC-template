// ignore_for_file: must_be_immutable

part of 'choose_topic1_bloc.dart';

/// Represents the state of ChooseTopic1 in the application.
class ChooseTopic1State extends Equatable {
  ChooseTopic1State({this.chooseTopic1ModelObj});

  ChooseTopic1Model? chooseTopic1ModelObj;

  @override
  List<Object?> get props => [
        chooseTopic1ModelObj,
      ];
  ChooseTopic1State copyWith({ChooseTopic1Model? chooseTopic1ModelObj}) {
    return ChooseTopic1State(
      chooseTopic1ModelObj: chooseTopic1ModelObj ?? this.chooseTopic1ModelObj,
    );
  }
}
