import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/choosetopicgrid3_item_model.dart';
import 'package:ankit_s_application110/presentation/choose_topic4_screen/models/choose_topic4_model.dart';
part 'choose_topic4_event.dart';
part 'choose_topic4_state.dart';

/// A bloc that manages the state of a ChooseTopic4 according to the event that is dispatched to it.
class ChooseTopic4Bloc extends Bloc<ChooseTopic4Event, ChooseTopic4State> {
  ChooseTopic4Bloc(ChooseTopic4State initialState) : super(initialState) {
    on<ChooseTopic4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseTopic4InitialEvent event,
    Emitter<ChooseTopic4State> emit,
  ) async {
    emit(state.copyWith(
        chooseTopic4ModelObj: state.chooseTopic4ModelObj?.copyWith(
            choosetopicgrid3ItemList: fillChoosetopicgrid3ItemList())));
  }

  List<Choosetopicgrid3ItemModel> fillChoosetopicgrid3ItemList() {
    return [
      Choosetopicgrid3ItemModel(
          reduceStress: "Reduce Stress",
          reduceStressImage: ImageConstant.imgMaskGroupDeepOrange400)
    ];
  }
}
