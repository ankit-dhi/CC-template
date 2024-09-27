// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchsection4_item_model.dart';
import 'durationsection3_item_model.dart';

/// This class defines the variables used in the [meditate_v6_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MeditateV6Model extends Equatable {
  MeditateV6Model({
    this.searchsection4ItemList = const [],
    this.durationsection3ItemList = const [],
  }) {}

  List<Searchsection4ItemModel> searchsection4ItemList;

  List<Durationsection3ItemModel> durationsection3ItemList;

  MeditateV6Model copyWith({
    List<Searchsection4ItemModel>? searchsection4ItemList,
    List<Durationsection3ItemModel>? durationsection3ItemList,
  }) {
    return MeditateV6Model(
      searchsection4ItemList:
          searchsection4ItemList ?? this.searchsection4ItemList,
      durationsection3ItemList:
          durationsection3ItemList ?? this.durationsection3ItemList,
    );
  }

  @override
  List<Object?> get props => [searchsection4ItemList, durationsection3ItemList];
}
