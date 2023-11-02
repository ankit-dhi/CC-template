import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewsection4_item_model.dart';
import 'package:ankit_s_application110/presentation/reminders2_screen/models/reminders2_model.dart';
part 'reminders2_event.dart';
part 'reminders2_state.dart';

/// A bloc that manages the state of a Reminders2 according to the event that is dispatched to it.
class Reminders2Bloc extends Bloc<Reminders2Event, Reminders2State> {
  Reminders2Bloc(Reminders2State initialState) : super(initialState) {
    on<Reminders2InitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    Reminders2InitialEvent event,
    Emitter<Reminders2State> emit,
  ) async {
    emit(state.copyWith(
        reminders2ModelObj: state.reminders2ModelObj?.copyWith(
            chipviewsection4ItemList: fillChipviewsection4ItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<Reminders2State> emit,
  ) {
    List<Chipviewsection4ItemModel> newList =
        List<Chipviewsection4ItemModel>.from(
            state.reminders2ModelObj!.chipviewsection4ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        reminders2ModelObj: state.reminders2ModelObj
            ?.copyWith(chipviewsection4ItemList: newList)));
  }

  List<Chipviewsection4ItemModel> fillChipviewsection4ItemList() {
    return List.generate(7, (index) => Chipviewsection4ItemModel());
  }
}
