// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchsection3_item_model.dart';
import 'durationsection2_item_model.dart';

/// This class defines the variables used in the [meditate_v5_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MeditateV5Model extends Equatable {
  MeditateV5Model({
    this.searchsection3ItemList = const [],
    this.durationsection2ItemList = const [],
  }) {}

  List<Searchsection3ItemModel> searchsection3ItemList;

  List<Durationsection2ItemModel> durationsection2ItemList;

  MeditateV5Model copyWith({
    List<Searchsection3ItemModel>? searchsection3ItemList,
    List<Durationsection2ItemModel>? durationsection2ItemList,
  }) {
    return MeditateV5Model(
      searchsection3ItemList:
          searchsection3ItemList ?? this.searchsection3ItemList,
      durationsection2ItemList:
          durationsection2ItemList ?? this.durationsection2ItemList,
    );
  }

  @override
  List<Object?> get props => [searchsection3ItemList, durationsection2ItemList];
}
