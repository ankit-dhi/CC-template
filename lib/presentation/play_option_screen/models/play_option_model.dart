// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'playoptionlist_item_model.dart';

/// This class defines the variables used in the [play_option_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlayOptionModel extends Equatable {
  PlayOptionModel({this.playoptionlistItemList = const []}) {}

  List<PlayoptionlistItemModel> playoptionlistItemList;

  PlayOptionModel copyWith(
      {List<PlayoptionlistItemModel>? playoptionlistItemList}) {
    return PlayOptionModel(
      playoptionlistItemList:
          playoptionlistItemList ?? this.playoptionlistItemList,
    );
  }

  @override
  List<Object?> get props => [playoptionlistItemList];
}
