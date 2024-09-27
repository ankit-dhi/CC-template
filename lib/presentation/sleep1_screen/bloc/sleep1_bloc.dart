import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleep2_item_model.dart';
import '../models/sleep3_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep1_screen/models/sleep1_model.dart';
part 'sleep1_event.dart';
part 'sleep1_state.dart';

/// A bloc that manages the state of a Sleep1 according to the event that is dispatched to it.
class Sleep1Bloc extends Bloc<Sleep1Event, Sleep1State> {
  Sleep1Bloc(Sleep1State initialState) : super(initialState) {
    on<Sleep1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Sleep1InitialEvent event,
    Emitter<Sleep1State> emit,
  ) async {
    emit(state.copyWith(
        sleep1ModelObj: state.sleep1ModelObj?.copyWith(
      sleep2ItemList: fillSleep2ItemList(),
      sleep3ItemList: fillSleep3ItemList(),
    )));
  }

  List<Sleep2ItemModel> fillSleep2ItemList() {
    return [
      Sleep2ItemModel(iconButton: ImageConstant.imgFrameIndigo50, all: "All"),
      Sleep2ItemModel(
          iconButton: ImageConstant.imgFrameIndigo5065x65, all: "My"),
      Sleep2ItemModel(iconButton: ImageConstant.imgFrame65x65, all: "Anxious"),
      Sleep2ItemModel(iconButton: ImageConstant.imgThumbsUp, all: "Sleep"),
      Sleep2ItemModel(
          iconButton: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<Sleep3ItemModel> fillSleep3ItemList() {
    return [
      Sleep3ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleep3ItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
