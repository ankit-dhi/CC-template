// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchsection2_item_model.dart';
import 'durationsection1_item_model.dart';

/// This class defines the variables used in the [meditate_v4_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MeditateV4Model extends Equatable {
  MeditateV4Model({
    this.searchsection2ItemList = const [],
    this.durationsection1ItemList = const [],
  }) {}

  List<Searchsection2ItemModel> searchsection2ItemList;

  List<Durationsection1ItemModel> durationsection1ItemList;

  MeditateV4Model copyWith({
    List<Searchsection2ItemModel>? searchsection2ItemList,
    List<Durationsection1ItemModel>? durationsection1ItemList,
  }) {
    return MeditateV4Model(
      searchsection2ItemList:
          searchsection2ItemList ?? this.searchsection2ItemList,
      durationsection1ItemList:
          durationsection1ItemList ?? this.durationsection1ItemList,
    );
  }

  @override
  List<Object?> get props => [searchsection2ItemList, durationsection1ItemList];
}
