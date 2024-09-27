import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewsection6_item_model.dart';
import 'package:ankit_s_application110/presentation/reminders3_screen/models/reminders3_model.dart';
part 'reminders3_event.dart';
part 'reminders3_state.dart';

/// A bloc that manages the state of a Reminders3 according to the event that is dispatched to it.
class Reminders3Bloc extends Bloc<Reminders3Event, Reminders3State> {
  Reminders3Bloc(Reminders3State initialState) : super(initialState) {
    on<Reminders3InitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    Reminders3InitialEvent event,
    Emitter<Reminders3State> emit,
  ) async {
    emit(state.copyWith(
        reminders3ModelObj: state.reminders3ModelObj?.copyWith(
            chipviewsection6ItemList: fillChipviewsection6ItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<Reminders3State> emit,
  ) {
    List<Chipviewsection6ItemModel> newList =
        List<Chipviewsection6ItemModel>.from(
            state.reminders3ModelObj!.chipviewsection6ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        reminders3ModelObj: state.reminders3ModelObj
            ?.copyWith(chipviewsection6ItemList: newList)));
  }

  List<Chipviewsection6ItemModel> fillChipviewsection6ItemList() {
    return List.generate(7, (index) => Chipviewsection6ItemModel());
  }
}
