// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'playoptionlist2_item_model.dart';

/// This class defines the variables used in the [play_option2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlayOption2Model extends Equatable {
  PlayOption2Model({this.playoptionlist2ItemList = const []}) {}

  List<Playoptionlist2ItemModel> playoptionlist2ItemList;

  PlayOption2Model copyWith(
      {List<Playoptionlist2ItemModel>? playoptionlist2ItemList}) {
    return PlayOption2Model(
      playoptionlist2ItemList:
          playoptionlist2ItemList ?? this.playoptionlist2ItemList,
    );
  }

  @override
  List<Object?> get props => [playoptionlist2ItemList];
}
