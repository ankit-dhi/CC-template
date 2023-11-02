// ignore_for_file: must_be_immutable

part of 'choose_topic_bloc.dart';

/// Represents the state of ChooseTopic in the application.
class ChooseTopicState extends Equatable {
  ChooseTopicState({this.chooseTopicModelObj});

  ChooseTopicModel? chooseTopicModelObj;

  @override
  List<Object?> get props => [
        chooseTopicModelObj,
      ];
  ChooseTopicState copyWith({ChooseTopicModel? chooseTopicModelObj}) {
    return ChooseTopicState(
      chooseTopicModelObj: chooseTopicModelObj ?? this.chooseTopicModelObj,
    );
  }
}
