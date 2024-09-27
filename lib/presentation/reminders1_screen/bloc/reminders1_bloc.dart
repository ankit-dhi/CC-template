import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewsection2_item_model.dart';
import 'package:ankit_s_application110/presentation/reminders1_screen/models/reminders1_model.dart';
part 'reminders1_event.dart';
part 'reminders1_state.dart';

/// A bloc that manages the state of a Reminders1 according to the event that is dispatched to it.
class Reminders1Bloc extends Bloc<Reminders1Event, Reminders1State> {
  Reminders1Bloc(Reminders1State initialState) : super(initialState) {
    on<Reminders1InitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    Reminders1InitialEvent event,
    Emitter<Reminders1State> emit,
  ) async {
    emit(state.copyWith(
        reminders1ModelObj: state.reminders1ModelObj?.copyWith(
            chipviewsection2ItemList: fillChipviewsection2ItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<Reminders1State> emit,
  ) {
    List<Chipviewsection2ItemModel> newList =
        List<Chipviewsection2ItemModel>.from(
            state.reminders1ModelObj!.chipviewsection2ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        reminders1ModelObj: state.reminders1ModelObj
            ?.copyWith(chipviewsection2ItemList: newList)));
  }

  List<Chipviewsection2ItemModel> fillChipviewsection2ItemList() {
    return List.generate(7, (index) => Chipviewsection2ItemModel());
  }
}
