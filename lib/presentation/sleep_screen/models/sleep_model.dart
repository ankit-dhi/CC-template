// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleep_item_model.dart';
import 'sleep1_item_model.dart';

/// This class defines the variables used in the [sleep_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SleepModel extends Equatable {
  SleepModel({
    this.sleepItemList = const [],
    this.sleep1ItemList = const [],
  }) {}

  List<SleepItemModel> sleepItemList;

  List<Sleep1ItemModel> sleep1ItemList;

  SleepModel copyWith({
    List<SleepItemModel>? sleepItemList,
    List<Sleep1ItemModel>? sleep1ItemList,
  }) {
    return SleepModel(
      sleepItemList: sleepItemList ?? this.sleepItemList,
      sleep1ItemList: sleep1ItemList ?? this.sleep1ItemList,
    );
  }

  @override
  List<Object?> get props => [sleepItemList, sleep1ItemList];
}
