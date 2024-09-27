// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipviewsection_item_model.dart';

/// This class defines the variables used in the [reminders_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RemindersModel extends Equatable {
  RemindersModel({this.chipviewsectionItemList = const []}) {}

  List<ChipviewsectionItemModel> chipviewsectionItemList;

  RemindersModel copyWith(
      {List<ChipviewsectionItemModel>? chipviewsectionItemList}) {
    return RemindersModel(
      chipviewsectionItemList:
          chipviewsectionItemList ?? this.chipviewsectionItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewsectionItemList];
}
