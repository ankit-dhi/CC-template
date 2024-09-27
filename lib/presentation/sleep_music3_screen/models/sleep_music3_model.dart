// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleepmusic3_item_model.dart';

/// This class defines the variables used in the [sleep_music3_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SleepMusic3Model extends Equatable {
  SleepMusic3Model({this.sleepmusic3ItemList = const []}) {}

  List<Sleepmusic3ItemModel> sleepmusic3ItemList;

  SleepMusic3Model copyWith({List<Sleepmusic3ItemModel>? sleepmusic3ItemList}) {
    return SleepMusic3Model(
      sleepmusic3ItemList: sleepmusic3ItemList ?? this.sleepmusic3ItemList,
    );
  }

  @override
  List<Object?> get props => [sleepmusic3ItemList];
}
