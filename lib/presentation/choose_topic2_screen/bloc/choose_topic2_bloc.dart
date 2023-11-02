import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/choosetopicgrid2_item_model.dart';
import 'package:ankit_s_application110/presentation/choose_topic2_screen/models/choose_topic2_model.dart';
part 'choose_topic2_event.dart';
part 'choose_topic2_state.dart';

/// A bloc that manages the state of a ChooseTopic2 according to the event that is dispatched to it.
class ChooseTopic2Bloc extends Bloc<ChooseTopic2Event, ChooseTopic2State> {
  ChooseTopic2Bloc(ChooseTopic2State initialState) : super(initialState) {
    on<ChooseTopic2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseTopic2InitialEvent event,
    Emitter<ChooseTopic2State> emit,
  ) async {
    emit(state.copyWith(
        chooseTopic2ModelObj: state.chooseTopic2ModelObj?.copyWith(
            choosetopicgrid2ItemList: fillChoosetopicgrid2ItemList())));
  }

  List<Choosetopicgrid2ItemModel> fillChoosetopicgrid2ItemList() {
    return [
      Choosetopicgrid2ItemModel(
          reduceStress: "Reduce Stress",
          reduceStressImage: ImageConstant.imgMaskGroupDeepOrange400)
    ];
  }
}
