// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'start_item_model.dart';
import 'focus_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.startItemList = const [],
    this.focusItemList = const [],
  }) {}

  List<StartItemModel> startItemList;

  List<FocusItemModel> focusItemList;

  HomeModel copyWith({
    List<StartItemModel>? startItemList,
    List<FocusItemModel>? focusItemList,
  }) {
    return HomeModel(
      startItemList: startItemList ?? this.startItemList,
      focusItemList: focusItemList ?? this.focusItemList,
    );
  }

  @override
  List<Object?> get props => [startItemList, focusItemList];
}
