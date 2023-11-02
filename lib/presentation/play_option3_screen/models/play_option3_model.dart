// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'playoptionlist3_item_model.dart';

/// This class defines the variables used in the [play_option3_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlayOption3Model extends Equatable {
  PlayOption3Model({this.playoptionlist3ItemList = const []}) {}

  List<Playoptionlist3ItemModel> playoptionlist3ItemList;

  PlayOption3Model copyWith(
      {List<Playoptionlist3ItemModel>? playoptionlist3ItemList}) {
    return PlayOption3Model(
      playoptionlist3ItemList:
          playoptionlist3ItemList ?? this.playoptionlist3ItemList,
    );
  }

  @override
  List<Object?> get props => [playoptionlist3ItemList];
}
