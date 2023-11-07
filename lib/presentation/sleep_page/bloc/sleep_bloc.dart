import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleepgrid_item_model.dart';
import 'package:ankit_s_application113/presentation/sleep_page/models/sleep_model.dart';
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
      sleepgridItemList: fillSleepgridItemList(),
    )));
  }

  List<SleepgridItemModel> fillSleepgridItemList() {
    return [
      SleepgridItemModel(
          nightIsland: ImageConstant.imgGroup,
          nightIsland1: "Night Island",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC"),
      SleepgridItemModel(
          nightIsland: ImageConstant.imgXmlid134,
          nightIsland1: "Sweet Sleep",
          time: "45 MIN",
          sleepmusic: "SLEEP MUSIC")
    ];
  }
}
