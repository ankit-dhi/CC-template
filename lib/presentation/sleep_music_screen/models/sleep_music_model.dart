// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleepmusic_item_model.dart';

/// This class defines the variables used in the [sleep_music_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SleepMusicModel extends Equatable {
  SleepMusicModel({this.sleepmusicItemList = const []}) {}

  List<SleepmusicItemModel> sleepmusicItemList;

  SleepMusicModel copyWith({List<SleepmusicItemModel>? sleepmusicItemList}) {
    return SleepMusicModel(
      sleepmusicItemList: sleepmusicItemList ?? this.sleepmusicItemList,
    );
  }

  @override
  List<Object?> get props => [sleepmusicItemList];
}
