// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipviewsection2_item_model.dart';

/// This class defines the variables used in the [reminders1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Reminders1Model extends Equatable {
  Reminders1Model({this.chipviewsection2ItemList = const []}) {}

  List<Chipviewsection2ItemModel> chipviewsection2ItemList;

  Reminders1Model copyWith(
      {List<Chipviewsection2ItemModel>? chipviewsection2ItemList}) {
    return Reminders1Model(
      chipviewsection2ItemList:
          chipviewsection2ItemList ?? this.chipviewsection2ItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewsection2ItemList];
}
