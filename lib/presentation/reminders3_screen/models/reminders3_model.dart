// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipviewsection6_item_model.dart';

/// This class defines the variables used in the [reminders3_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Reminders3Model extends Equatable {
  Reminders3Model({this.chipviewsection6ItemList = const []}) {}

  List<Chipviewsection6ItemModel> chipviewsection6ItemList;

  Reminders3Model copyWith(
      {List<Chipviewsection6ItemModel>? chipviewsection6ItemList}) {
    return Reminders3Model(
      chipviewsection6ItemList:
          chipviewsection6ItemList ?? this.chipviewsection6ItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewsection6ItemList];
}
