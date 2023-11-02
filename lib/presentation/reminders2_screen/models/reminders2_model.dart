// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipviewsection4_item_model.dart';

/// This class defines the variables used in the [reminders2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Reminders2Model extends Equatable {
  Reminders2Model({this.chipviewsection4ItemList = const []}) {}

  List<Chipviewsection4ItemModel> chipviewsection4ItemList;

  Reminders2Model copyWith(
      {List<Chipviewsection4ItemModel>? chipviewsection4ItemList}) {
    return Reminders2Model(
      chipviewsection4ItemList:
          chipviewsection4ItemList ?? this.chipviewsection4ItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewsection4ItemList];
}
