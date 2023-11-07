// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleepgrid_item_model.dart';

/// This class defines the variables used in the [sleep_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SleepModel extends Equatable {
  SleepModel({this.sleepgridItemList = const []}) {}

  List<SleepgridItemModel> sleepgridItemList;

  SleepModel copyWith({List<SleepgridItemModel>? sleepgridItemList}) {
    return SleepModel(
      sleepgridItemList: sleepgridItemList ?? this.sleepgridItemList,
    );
  }

  @override
  List<Object?> get props => [sleepgridItemList];
}
