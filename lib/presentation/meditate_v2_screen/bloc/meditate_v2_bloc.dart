import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchsection_item_model.dart';
import '../models/durationsection_item_model.dart';
import 'package:ankit_s_application110/presentation/meditate_v2_screen/models/meditate_v2_model.dart';
part 'meditate_v2_event.dart';
part 'meditate_v2_state.dart';

/// A bloc that manages the state of a MeditateV2 according to the event that is dispatched to it.
class MeditateV2Bloc extends Bloc<MeditateV2Event, MeditateV2State> {
  MeditateV2Bloc(MeditateV2State initialState) : super(initialState) {
    on<MeditateV2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MeditateV2InitialEvent event,
    Emitter<MeditateV2State> emit,
  ) async {
    emit(state.copyWith(
        meditateV2ModelObj: state.meditateV2ModelObj?.copyWith(
      searchsectionItemList: fillSearchsectionItemList(),
      durationsectionItemList: fillDurationsectionItemList(),
    )));
  }

  List<SearchsectionItemModel> fillSearchsectionItemList() {
    return [
      SearchsectionItemModel(search: ImageConstant.imgSearch, all: "All"),
      SearchsectionItemModel(search: ImageConstant.imgFrame, all: "My"),
      SearchsectionItemModel(search: ImageConstant.imgClose, all: "Anxious"),
      SearchsectionItemModel(
          search: ImageConstant.imgProfileWhiteA70001, all: "Sleep"),
      SearchsectionItemModel(
          search: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<DurationsectionItemModel> fillDurationsectionItemList() {
    return [
      DurationsectionItemModel(duration: "7 Days of Calm"),
      DurationsectionItemModel(duration: "Anxiet Release")
    ];
  }
}
