import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/choosetopic_item_model.dart';
import 'package:ankit_s_application110/presentation/choose_topic3_screen/models/choose_topic3_model.dart';
part 'choose_topic3_event.dart';
part 'choose_topic3_state.dart';

/// A bloc that manages the state of a ChooseTopic3 according to the event that is dispatched to it.
class ChooseTopic3Bloc extends Bloc<ChooseTopic3Event, ChooseTopic3State> {
  ChooseTopic3Bloc(ChooseTopic3State initialState) : super(initialState) {
    on<ChooseTopic3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseTopic3InitialEvent event,
    Emitter<ChooseTopic3State> emit,
  ) async {
    emit(state.copyWith(
        chooseTopic3ModelObj: state.chooseTopic3ModelObj?.copyWith(
      choosetopicItemList: fillChoosetopicItemList(),
    )));
  }

  List<ChoosetopicItemModel> fillChoosetopicItemList() {
    return [
      ChoosetopicItemModel(
          reduceStress: "Reduce Stress",
          nineteen: ImageConstant.imgMaskGroupDeepOrange400)
    ];
  }
}
