import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/choosetopicgrid_item_model.dart';
import 'package:ankit_s_application110/presentation/choose_topic_screen/models/choose_topic_model.dart';
part 'choose_topic_event.dart';
part 'choose_topic_state.dart';

/// A bloc that manages the state of a ChooseTopic according to the event that is dispatched to it.
class ChooseTopicBloc extends Bloc<ChooseTopicEvent, ChooseTopicState> {
  ChooseTopicBloc(ChooseTopicState initialState) : super(initialState) {
    on<ChooseTopicInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseTopicInitialEvent event,
    Emitter<ChooseTopicState> emit,
  ) async {
    emit(state.copyWith(
        chooseTopicModelObj: state.chooseTopicModelObj?.copyWith(
            choosetopicgridItemList: fillChoosetopicgridItemList())));
  }

  List<ChoosetopicgridItemModel> fillChoosetopicgridItemList() {
    return [
      ChoosetopicgridItemModel(
          reduceStress: "Reduce Stress",
          reduceStressImage: ImageConstant.imgMaskGroupDeepOrange400)
    ];
  }
}
