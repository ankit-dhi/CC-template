// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipviewsection8_item_model.dart';

/// This class defines the variables used in the [reminders4_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Reminders4Model extends Equatable {
  Reminders4Model({this.chipviewsection8ItemList = const []}) {}

  List<Chipviewsection8ItemModel> chipviewsection8ItemList;

  Reminders4Model copyWith(
      {List<Chipviewsection8ItemModel>? chipviewsection8ItemList}) {
    return Reminders4Model(
      chipviewsection8ItemList:
          chipviewsection8ItemList ?? this.chipviewsection8ItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewsection8ItemList];
}
