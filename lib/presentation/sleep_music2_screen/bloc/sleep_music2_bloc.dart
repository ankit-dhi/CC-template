import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleepmusic2_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep_music2_screen/models/sleep_music2_model.dart';
part 'sleep_music2_event.dart';
part 'sleep_music2_state.dart';

/// A bloc that manages the state of a SleepMusic2 according to the event that is dispatched to it.
class SleepMusic2Bloc extends Bloc<SleepMusic2Event, SleepMusic2State> {
  SleepMusic2Bloc(SleepMusic2State initialState) : super(initialState) {
    on<SleepMusic2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepMusic2InitialEvent event,
    Emitter<SleepMusic2State> emit,
  ) async {
    emit(state.copyWith(
        sleepMusic2ModelObj: state.sleepMusic2ModelObj
            ?.copyWith(sleepmusic2ItemList: fillSleepmusic2ItemList())));
  }

  List<Sleepmusic2ItemModel> fillSleepmusic2ItemList() {
    return [
      Sleepmusic2ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001122x176,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic2ItemModel(
          nightIsland: ImageConstant.imgXmlid134Indigo500,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic2ItemModel(
          nightIsland: ImageConstant.imgMaskGroup122x177,
          nightIsland1: "Good Night",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic2ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo800,
          nightIsland1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic2ItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic2ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
