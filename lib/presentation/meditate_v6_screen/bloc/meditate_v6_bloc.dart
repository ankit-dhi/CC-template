import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchsection4_item_model.dart';
import '../models/durationsection3_item_model.dart';
import 'package:ankit_s_application110/presentation/meditate_v6_screen/models/meditate_v6_model.dart';
part 'meditate_v6_event.dart';
part 'meditate_v6_state.dart';

/// A bloc that manages the state of a MeditateV6 according to the event that is dispatched to it.
class MeditateV6Bloc extends Bloc<MeditateV6Event, MeditateV6State> {
  MeditateV6Bloc(MeditateV6State initialState) : super(initialState) {
    on<MeditateV6InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MeditateV6InitialEvent event,
    Emitter<MeditateV6State> emit,
  ) async {
    emit(state.copyWith(
        meditateV6ModelObj: state.meditateV6ModelObj?.copyWith(
      searchsection4ItemList: fillSearchsection4ItemList(),
      durationsection3ItemList: fillDurationsection3ItemList(),
    )));
  }

  List<Searchsection4ItemModel> fillSearchsection4ItemList() {
    return [
      Searchsection4ItemModel(search: ImageConstant.imgSearch, all: "All"),
      Searchsection4ItemModel(search: ImageConstant.imgFrame, all: "My"),
      Searchsection4ItemModel(search: ImageConstant.imgClose, all: "Anxious"),
      Searchsection4ItemModel(
          search: ImageConstant.imgProfileWhiteA70001, all: "Sleep"),
      Searchsection4ItemModel(
          search: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<Durationsection3ItemModel> fillDurationsection3ItemList() {
    return [
      Durationsection3ItemModel(duration: "7 Days of Calm"),
      Durationsection3ItemModel(duration: "Anxiet Release")
    ];
  }
}
