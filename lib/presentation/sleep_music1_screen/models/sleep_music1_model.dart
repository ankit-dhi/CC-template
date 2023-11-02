// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleepmusic1_item_model.dart';

/// This class defines the variables used in the [sleep_music1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SleepMusic1Model extends Equatable {
  SleepMusic1Model({this.sleepmusic1ItemList = const []}) {}

  List<Sleepmusic1ItemModel> sleepmusic1ItemList;

  SleepMusic1Model copyWith({List<Sleepmusic1ItemModel>? sleepmusic1ItemList}) {
    return SleepMusic1Model(
      sleepmusic1ItemList: sleepmusic1ItemList ?? this.sleepmusic1ItemList,
    );
  }

  @override
  List<Object?> get props => [sleepmusic1ItemList];
}
