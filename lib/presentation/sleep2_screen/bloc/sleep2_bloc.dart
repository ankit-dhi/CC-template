import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleep4_item_model.dart';
import '../models/sleep5_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep2_screen/models/sleep2_model.dart';
part 'sleep2_event.dart';
part 'sleep2_state.dart';

/// A bloc that manages the state of a Sleep2 according to the event that is dispatched to it.
class Sleep2Bloc extends Bloc<Sleep2Event, Sleep2State> {
  Sleep2Bloc(Sleep2State initialState) : super(initialState) {
    on<Sleep2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Sleep2InitialEvent event,
    Emitter<Sleep2State> emit,
  ) async {
    emit(state.copyWith(
        sleep2ModelObj: state.sleep2ModelObj?.copyWith(
      sleep4ItemList: fillSleep4ItemList(),
      sleep5ItemList: fillSleep5ItemList(),
    )));
  }

  List<Sleep4ItemModel> fillSleep4ItemList() {
    return [
      Sleep4ItemModel(iconButton: ImageConstant.imgFrameIndigo50, all: "All"),
      Sleep4ItemModel(
          iconButton: ImageConstant.imgFrameIndigo5065x65, all: "My"),
      Sleep4ItemModel(iconButton: ImageConstant.imgFrame65x65, all: "Anxious"),
      Sleep4ItemModel(iconButton: ImageConstant.imgThumbsUp, all: "Sleep"),
      Sleep4ItemModel(
          iconButton: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<Sleep5ItemModel> fillSleep5ItemList() {
    return [
      Sleep5ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleep5ItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
