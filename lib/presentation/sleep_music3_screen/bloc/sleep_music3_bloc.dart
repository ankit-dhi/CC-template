import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleepmusic3_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep_music3_screen/models/sleep_music3_model.dart';
part 'sleep_music3_event.dart';
part 'sleep_music3_state.dart';

/// A bloc that manages the state of a SleepMusic3 according to the event that is dispatched to it.
class SleepMusic3Bloc extends Bloc<SleepMusic3Event, SleepMusic3State> {
  SleepMusic3Bloc(SleepMusic3State initialState) : super(initialState) {
    on<SleepMusic3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepMusic3InitialEvent event,
    Emitter<SleepMusic3State> emit,
  ) async {
    emit(state.copyWith(
        sleepMusic3ModelObj: state.sleepMusic3ModelObj
            ?.copyWith(sleepmusic3ItemList: fillSleepmusic3ItemList())));
  }

  List<Sleepmusic3ItemModel> fillSleepmusic3ItemList() {
    return [
      Sleepmusic3ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001122x176,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic3ItemModel(
          nightIsland: ImageConstant.imgXmlid134Indigo500,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic3ItemModel(
          nightIsland: ImageConstant.imgMaskGroup122x177,
          nightIsland1: "Good Night",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic3ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo800,
          nightIsland1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic3ItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic3ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
