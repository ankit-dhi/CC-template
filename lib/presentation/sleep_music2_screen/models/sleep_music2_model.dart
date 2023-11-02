// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleepmusic2_item_model.dart';

/// This class defines the variables used in the [sleep_music2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SleepMusic2Model extends Equatable {
  SleepMusic2Model({this.sleepmusic2ItemList = const []}) {}

  List<Sleepmusic2ItemModel> sleepmusic2ItemList;

  SleepMusic2Model copyWith({List<Sleepmusic2ItemModel>? sleepmusic2ItemList}) {
    return SleepMusic2Model(
      sleepmusic2ItemList: sleepmusic2ItemList ?? this.sleepmusic2ItemList,
    );
  }

  @override
  List<Object?> get props => [sleepmusic2ItemList];
}
