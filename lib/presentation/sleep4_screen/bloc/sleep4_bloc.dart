import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleep8_item_model.dart';
import '../models/sleep9_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep4_screen/models/sleep4_model.dart';
part 'sleep4_event.dart';
part 'sleep4_state.dart';

/// A bloc that manages the state of a Sleep4 according to the event that is dispatched to it.
class Sleep4Bloc extends Bloc<Sleep4Event, Sleep4State> {
  Sleep4Bloc(Sleep4State initialState) : super(initialState) {
    on<Sleep4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Sleep4InitialEvent event,
    Emitter<Sleep4State> emit,
  ) async {
    emit(state.copyWith(
        sleep4ModelObj: state.sleep4ModelObj?.copyWith(
      sleep8ItemList: fillSleep8ItemList(),
      sleep9ItemList: fillSleep9ItemList(),
    )));
  }

  List<Sleep8ItemModel> fillSleep8ItemList() {
    return [
      Sleep8ItemModel(iconButton: ImageConstant.imgFrameIndigo50, all: "All"),
      Sleep8ItemModel(
          iconButton: ImageConstant.imgFrameIndigo5065x65, all: "My"),
      Sleep8ItemModel(iconButton: ImageConstant.imgFrame65x65, all: "Anxious"),
      Sleep8ItemModel(iconButton: ImageConstant.imgThumbsUp, all: "Sleep"),
      Sleep8ItemModel(
          iconButton: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<Sleep9ItemModel> fillSleep9ItemList() {
    return [
      Sleep9ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleep9ItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
