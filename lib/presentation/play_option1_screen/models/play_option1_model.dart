// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'playoptionlist1_item_model.dart';

/// This class defines the variables used in the [play_option1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlayOption1Model extends Equatable {
  PlayOption1Model({this.playoptionlist1ItemList = const []}) {}

  List<Playoptionlist1ItemModel> playoptionlist1ItemList;

  PlayOption1Model copyWith(
      {List<Playoptionlist1ItemModel>? playoptionlist1ItemList}) {
    return PlayOption1Model(
      playoptionlist1ItemList:
          playoptionlist1ItemList ?? this.playoptionlist1ItemList,
    );
  }

  @override
  List<Object?> get props => [playoptionlist1ItemList];
}
