import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/playoptionlist_item_model.dart';
import 'package:ankit_s_application110/presentation/play_option_screen/models/play_option_model.dart';
part 'play_option_event.dart';
part 'play_option_state.dart';

/// A bloc that manages the state of a PlayOption according to the event that is dispatched to it.
class PlayOptionBloc extends Bloc<PlayOptionEvent, PlayOptionState> {
  PlayOptionBloc(PlayOptionState initialState) : super(initialState) {
    on<PlayOptionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlayOptionInitialEvent event,
    Emitter<PlayOptionState> emit,
  ) async {
    emit(state.copyWith(
        playOptionModelObj: state.playOptionModelObj
            ?.copyWith(playoptionlistItemList: fillPlayoptionlistItemList())));
  }

  List<PlayoptionlistItemModel> fillPlayoptionlistItemList() {
    return [
      PlayoptionlistItemModel(
          moonClouds: ImageConstant.imgMaskGroup122x177,
          moonClouds1: "Moon Clouds",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      PlayoptionlistItemModel(
          moonClouds: ImageConstant.imgXmlid134,
          moonClouds1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
