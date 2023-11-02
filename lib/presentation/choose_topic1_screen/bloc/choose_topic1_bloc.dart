import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/choosetopicgrid1_item_model.dart';
import 'package:ankit_s_application110/presentation/choose_topic1_screen/models/choose_topic1_model.dart';
part 'choose_topic1_event.dart';
part 'choose_topic1_state.dart';

/// A bloc that manages the state of a ChooseTopic1 according to the event that is dispatched to it.
class ChooseTopic1Bloc extends Bloc<ChooseTopic1Event, ChooseTopic1State> {
  ChooseTopic1Bloc(ChooseTopic1State initialState) : super(initialState) {
    on<ChooseTopic1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseTopic1InitialEvent event,
    Emitter<ChooseTopic1State> emit,
  ) async {
    emit(state.copyWith(
        chooseTopic1ModelObj: state.chooseTopic1ModelObj?.copyWith(
            choosetopicgrid1ItemList: fillChoosetopicgrid1ItemList())));
  }

  List<Choosetopicgrid1ItemModel> fillChoosetopicgrid1ItemList() {
    return [
      Choosetopicgrid1ItemModel(
          reduceStress: "Reduce Stress",
          reduceStressImage: ImageConstant.imgMaskGroupDeepOrange400)
    ];
  }
}
