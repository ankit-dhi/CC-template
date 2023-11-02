import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleep_item_model.dart';
import '../models/sleep1_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep_screen/models/sleep_model.dart';
part 'sleep_event.dart';
part 'sleep_state.dart';

/// A bloc that manages the state of a Sleep according to the event that is dispatched to it.
class SleepBloc extends Bloc<SleepEvent, SleepState> {
  SleepBloc(SleepState initialState) : super(initialState) {
    on<SleepInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepInitialEvent event,
    Emitter<SleepState> emit,
  ) async {
    emit(state.copyWith(
        sleepModelObj: state.sleepModelObj?.copyWith(
      sleepItemList: fillSleepItemList(),
      sleep1ItemList: fillSleep1ItemList(),
    )));
  }

  List<SleepItemModel> fillSleepItemList() {
    return [
      SleepItemModel(iconButton: ImageConstant.imgFrameIndigo50, all: "All"),
      SleepItemModel(
          iconButton: ImageConstant.imgFrameIndigo5065x65, all: "My"),
      SleepItemModel(iconButton: ImageConstant.imgFrame65x65, all: "Anxious"),
      SleepItemModel(iconButton: ImageConstant.imgThumbsUp, all: "Sleep"),
      SleepItemModel(
          iconButton: ImageConstant.imgProfileWhiteA7000165x65, all: "Kids")
    ];
  }

  List<Sleep1ItemModel> fillSleep1ItemList() {
    return [
      Sleep1ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleep1ItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
