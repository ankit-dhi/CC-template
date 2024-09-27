import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleepmusic_item_model.dart';
import 'package:ankit_s_application110/presentation/sleep_music_screen/models/sleep_music_model.dart';
part 'sleep_music_event.dart';
part 'sleep_music_state.dart';

/// A bloc that manages the state of a SleepMusic according to the event that is dispatched to it.
class SleepMusicBloc extends Bloc<SleepMusicEvent, SleepMusicState> {
  SleepMusicBloc(SleepMusicState initialState) : super(initialState) {
    on<SleepMusicInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SleepMusicInitialEvent event,
    Emitter<SleepMusicState> emit,
  ) async {
    emit(state.copyWith(
        sleepMusicModelObj: state.sleepMusicModelObj
            ?.copyWith(sleepmusicItemList: fillSleepmusicItemList())));
  }

  List<SleepmusicItemModel> fillSleepmusicItemList() {
    return [
      SleepmusicItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001122x176,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      SleepmusicItemModel(
          nightIsland: ImageConstant.imgXmlid134Indigo500,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      SleepmusicItemModel(
          nightIsland: ImageConstant.imgMaskGroup122x177,
          nightIsland1: "Good Night",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      SleepmusicItemModel(
          nightIsland: ImageConstant.imgGroupIndigo800,
          nightIsland1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      SleepmusicItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      SleepmusicItemModel(
          nightIsland: ImageConstant.imgGroupIndigo40001,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
