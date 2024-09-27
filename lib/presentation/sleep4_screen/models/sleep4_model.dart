// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleep8_item_model.dart';
import 'sleep9_item_model.dart';

/// This class defines the variables used in the [sleep4_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Sleep4Model extends Equatable {
  Sleep4Model({
    this.sleep8ItemList = const [],
    this.sleep9ItemList = const [],
  }) {}

  List<Sleep8ItemModel> sleep8ItemList;

  List<Sleep9ItemModel> sleep9ItemList;

  Sleep4Model copyWith({
    List<Sleep8ItemModel>? sleep8ItemList,
    List<Sleep9ItemModel>? sleep9ItemList,
  }) {
    return Sleep4Model(
      sleep8ItemList: sleep8ItemList ?? this.sleep8ItemList,
      sleep9ItemList: sleep9ItemList ?? this.sleep9ItemList,
    );
  }

  @override
  List<Object?> get props => [sleep8ItemList, sleep9ItemList];
}
