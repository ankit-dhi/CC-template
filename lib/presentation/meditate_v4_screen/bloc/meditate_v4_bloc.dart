import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchsection2_item_model.dart';
import '../models/durationsection1_item_model.dart';
import 'package:ankit_s_application110/presentation/meditate_v4_screen/models/meditate_v4_model.dart';
part 'meditate_v4_event.dart';
part 'meditate_v4_state.dart';

/// A bloc that manages the state of a MeditateV4 according to the event that is dispatched to it.
class MeditateV4Bloc extends Bloc<MeditateV4Event, MeditateV4State> {
  MeditateV4Bloc(MeditateV4State initialState) : super(initialState) {
    on<MeditateV4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MeditateV4InitialEvent event,
    Emitter<MeditateV4State> emit,
  ) async {
    emit(state.copyWith(
        meditateV4ModelObj: state.meditateV4ModelObj?.copyWith(
      searchsection2ItemList: fillSearchsection2ItemList(),
      durationsection1ItemList: fillDurationsection1ItemList(),
    )));
  }

  List<Searchsection2ItemModel> fillSearchsection2ItemList() {
    return [
      Searchsection2ItemModel(search: ImageConstant.imgSearch, all: "All"),
      Searchsection2ItemModel(search: ImageConstant.imgFrame, all: "My"),
      Searchsection2ItemModel(search: ImageConstant.imgClose, all: "Anxious"),
      Searchsection2ItemModel(
          search: ImageConstant.imgProfileWhiteA70001, all: "Sleep"),
      Searchsection2ItemModel(
          search: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<Durationsection1ItemModel> fillDurationsection1ItemList() {
    return [
      Durationsection1ItemModel(duration: "7 Days of Calm"),
      Durationsection1ItemModel(duration: "Anxiet Release")
    ];
  }
}
