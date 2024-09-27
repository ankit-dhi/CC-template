import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchsection1_item_model.dart';
import '../models/durationstaggered_item_model.dart';
import 'package:ankit_s_application110/presentation/meditate_v3_screen/models/meditate_v3_model.dart';
part 'meditate_v3_event.dart';
part 'meditate_v3_state.dart';

/// A bloc that manages the state of a MeditateV3 according to the event that is dispatched to it.
class MeditateV3Bloc extends Bloc<MeditateV3Event, MeditateV3State> {
  MeditateV3Bloc(MeditateV3State initialState) : super(initialState) {
    on<MeditateV3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MeditateV3InitialEvent event,
    Emitter<MeditateV3State> emit,
  ) async {
    emit(state.copyWith(
        meditateV3ModelObj: state.meditateV3ModelObj?.copyWith(
      searchsection1ItemList: fillSearchsection1ItemList(),
      durationstaggeredItemList: fillDurationstaggeredItemList(),
    )));
  }

  List<Searchsection1ItemModel> fillSearchsection1ItemList() {
    return [
      Searchsection1ItemModel(search: ImageConstant.imgSearch, all: "All"),
      Searchsection1ItemModel(search: ImageConstant.imgFrame, all: "My"),
      Searchsection1ItemModel(search: ImageConstant.imgClose, all: "Anxious"),
      Searchsection1ItemModel(
          search: ImageConstant.imgProfileWhiteA70001, all: "Sleep"),
      Searchsection1ItemModel(
          search: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<DurationstaggeredItemModel> fillDurationstaggeredItemList() {
    return [
      DurationstaggeredItemModel(duration: "7 Days of Calm"),
      DurationstaggeredItemModel(duration: "Anxiet Release")
    ];
  }
}
