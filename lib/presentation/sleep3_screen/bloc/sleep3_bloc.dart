import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleep6_item_model.dart';
import '../models/sleep7_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep3_screen/models/sleep3_model.dart';
part 'sleep3_event.dart';
part 'sleep3_state.dart';

/// A bloc that manages the state of a Sleep3 according to the event that is dispatched to it.
class Sleep3Bloc extends Bloc<Sleep3Event, Sleep3State> {
  Sleep3Bloc(Sleep3State initialState) : super(initialState) {
    on<Sleep3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Sleep3InitialEvent event,
    Emitter<Sleep3State> emit,
  ) async {
    emit(state.copyWith(
        sleep3ModelObj: state.sleep3ModelObj?.copyWith(
      sleep6ItemList: fillSleep6ItemList(),
      sleep7ItemList: fillSleep7ItemList(),
    )));
  }

  List<Sleep6ItemModel> fillSleep6ItemList() {
    return [
      Sleep6ItemModel(iconButton: ImageConstant.imgFrameIndigo50, all: "All"),
      Sleep6ItemModel(
          iconButton: ImageConstant.imgFrameIndigo5065x65, all: "My"),
      Sleep6ItemModel(iconButton: ImageConstant.imgFrame65x65, all: "Anxious"),
      Sleep6ItemModel(iconButton: ImageConstant.imgThumbsUp, all: "Sleep"),
      Sleep6ItemModel(
          iconButton: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<Sleep7ItemModel> fillSleep7ItemList() {
    return [
      Sleep7ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleep7ItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
