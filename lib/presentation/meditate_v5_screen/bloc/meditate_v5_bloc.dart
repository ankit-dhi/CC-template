import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchsection3_item_model.dart';
import '../models/durationsection2_item_model.dart';
import 'package:ankit_s_application110/presentation/meditate_v5_screen/models/meditate_v5_model.dart';
part 'meditate_v5_event.dart';
part 'meditate_v5_state.dart';

/// A bloc that manages the state of a MeditateV5 according to the event that is dispatched to it.
class MeditateV5Bloc extends Bloc<MeditateV5Event, MeditateV5State> {
  MeditateV5Bloc(MeditateV5State initialState) : super(initialState) {
    on<MeditateV5InitialEvent>(_onInitialize);
  }

  _onInitialize(
    MeditateV5InitialEvent event,
    Emitter<MeditateV5State> emit,
  ) async {
    emit(state.copyWith(
        meditateV5ModelObj: state.meditateV5ModelObj?.copyWith(
      searchsection3ItemList: fillSearchsection3ItemList(),
      durationsection2ItemList: fillDurationsection2ItemList(),
    )));
  }

  List<Searchsection3ItemModel> fillSearchsection3ItemList() {
    return [
      Searchsection3ItemModel(search: ImageConstant.imgSearch, all: "All"),
      Searchsection3ItemModel(search: ImageConstant.imgFrame, all: "My"),
      Searchsection3ItemModel(search: ImageConstant.imgClose, all: "Anxious"),
      Searchsection3ItemModel(
          search: ImageConstant.imgProfileWhiteA70001, all: "Sleep"),
      Searchsection3ItemModel(
          search: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<Durationsection2ItemModel> fillDurationsection2ItemList() {
    return [
      Durationsection2ItemModel(duration: "7 Days of Calm"),
      Durationsection2ItemModel(duration: "Anxiet Release")
    ];
  }
}
