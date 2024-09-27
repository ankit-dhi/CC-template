// ignore_for_file: must_be_immutable

part of 'choose_topic4_bloc.dart';

/// Represents the state of ChooseTopic4 in the application.
class ChooseTopic4State extends Equatable {
  ChooseTopic4State({this.chooseTopic4ModelObj});

  ChooseTopic4Model? chooseTopic4ModelObj;

  @override
  List<Object?> get props => [
        chooseTopic4ModelObj,
      ];
  ChooseTopic4State copyWith({ChooseTopic4Model? chooseTopic4ModelObj}) {
    return ChooseTopic4State(
      chooseTopic4ModelObj: chooseTopic4ModelObj ?? this.chooseTopic4ModelObj,
    );
  }
}
