import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleepmusic4_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep_music4_screen/models/sleep_music4_model.dart';
part 'sleep_music4_event.dart';
part 'sleep_music4_state.dart';

/// A bloc that manages the state of a SleepMusic4 according to the event that is dispatched to it.
class SleepMusic4Bloc extends Bloc<SleepMusic4Event, SleepMusic4State> {
  SleepMusic4Bloc(SleepMusic4State initialState) : super(initialState) {
    on<SleepMusic4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepMusic4InitialEvent event,
    Emitter<SleepMusic4State> emit,
  ) async {
    emit(state.copyWith(
        sleepMusic4ModelObj: state.sleepMusic4ModelObj
            ?.copyWith(sleepmusic4ItemList: fillSleepmusic4ItemList())));
  }

  List<Sleepmusic4ItemModel> fillSleepmusic4ItemList() {
    return [
      Sleepmusic4ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001122x176,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic4ItemModel(
          nightIsland: ImageConstant.imgXmlid134Indigo500,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic4ItemModel(
          nightIsland: ImageConstant.imgMaskGroup122x177,
          nightIsland1: "Good Night",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic4ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo800,
          nightIsland1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic4ItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic4ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
