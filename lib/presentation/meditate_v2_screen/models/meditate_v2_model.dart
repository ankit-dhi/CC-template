// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchsection_item_model.dart';
import 'durationsection_item_model.dart';

/// This class defines the variables used in the [meditate_v2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MeditateV2Model extends Equatable {
  MeditateV2Model({
    this.searchsectionItemList = const [],
    this.durationsectionItemList = const [],
  }) {}

  List<SearchsectionItemModel> searchsectionItemList;

  List<DurationsectionItemModel> durationsectionItemList;

  MeditateV2Model copyWith({
    List<SearchsectionItemModel>? searchsectionItemList,
    List<DurationsectionItemModel>? durationsectionItemList,
  }) {
    return MeditateV2Model(
      searchsectionItemList:
          searchsectionItemList ?? this.searchsectionItemList,
      durationsectionItemList:
          durationsectionItemList ?? this.durationsectionItemList,
    );
  }

  @override
  List<Object?> get props => [searchsectionItemList, durationsectionItemList];
}
