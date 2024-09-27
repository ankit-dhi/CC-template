// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'playoptionlist4_item_model.dart';

/// This class defines the variables used in the [play_option4_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlayOption4Model extends Equatable {
  PlayOption4Model({this.playoptionlist4ItemList = const []}) {}

  List<Playoptionlist4ItemModel> playoptionlist4ItemList;

  PlayOption4Model copyWith(
      {List<Playoptionlist4ItemModel>? playoptionlist4ItemList}) {
    return PlayOption4Model(
      playoptionlist4ItemList:
          playoptionlist4ItemList ?? this.playoptionlist4ItemList,
    );
  }

  @override
  List<Object?> get props => [playoptionlist4ItemList];
}
