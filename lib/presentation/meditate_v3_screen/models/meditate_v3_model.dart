// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchsection1_item_model.dart';
import 'durationstaggered_item_model.dart';

/// This class defines the variables used in the [meditate_v3_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MeditateV3Model extends Equatable {
  MeditateV3Model({
    this.searchsection1ItemList = const [],
    this.durationstaggeredItemList = const [],
  }) {}

  List<Searchsection1ItemModel> searchsection1ItemList;

  List<DurationstaggeredItemModel> durationstaggeredItemList;

  MeditateV3Model copyWith({
    List<Searchsection1ItemModel>? searchsection1ItemList,
    List<DurationstaggeredItemModel>? durationstaggeredItemList,
  }) {
    return MeditateV3Model(
      searchsection1ItemList:
          searchsection1ItemList ?? this.searchsection1ItemList,
      durationstaggeredItemList:
          durationstaggeredItemList ?? this.durationstaggeredItemList,
    );
  }

  @override
  List<Object?> get props =>
      [searchsection1ItemList, durationstaggeredItemList];
}
