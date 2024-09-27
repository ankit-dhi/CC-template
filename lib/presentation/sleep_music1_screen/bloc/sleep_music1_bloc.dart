import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleepmusic1_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep_music1_screen/models/sleep_music1_model.dart';
part 'sleep_music1_event.dart';
part 'sleep_music1_state.dart';

/// A bloc that manages the state of a SleepMusic1 according to the event that is dispatched to it.
class SleepMusic1Bloc extends Bloc<SleepMusic1Event, SleepMusic1State> {
  SleepMusic1Bloc(SleepMusic1State initialState) : super(initialState) {
    on<SleepMusic1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepMusic1InitialEvent event,
    Emitter<SleepMusic1State> emit,
  ) async {
    emit(state.copyWith(
        sleepMusic1ModelObj: state.sleepMusic1ModelObj
            ?.copyWith(sleepmusic1ItemList: fillSleepmusic1ItemList())));
  }

  List<Sleepmusic1ItemModel> fillSleepmusic1ItemList() {
    return [
      Sleepmusic1ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001122x176,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic1ItemModel(
          nightIsland: ImageConstant.imgXmlid134Indigo500,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic1ItemModel(
          nightIsland: ImageConstant.imgMaskGroup122x177,
          nightIsland1: "Good Night",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic1ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo800,
          nightIsland1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic1ItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      Sleepmusic1ItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
