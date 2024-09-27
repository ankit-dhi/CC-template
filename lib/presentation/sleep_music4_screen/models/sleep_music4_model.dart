// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleepmusic4_item_model.dart';

/// This class defines the variables used in the [sleep_music4_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SleepMusic4Model extends Equatable {
  SleepMusic4Model({this.sleepmusic4ItemList = const []}) {}

  List<Sleepmusic4ItemModel> sleepmusic4ItemList;

  SleepMusic4Model copyWith({List<Sleepmusic4ItemModel>? sleepmusic4ItemList}) {
    return SleepMusic4Model(
      sleepmusic4ItemList: sleepmusic4ItemList ?? this.sleepmusic4ItemList,
    );
  }

  @override
  List<Object?> get props => [sleepmusic4ItemList];
}
