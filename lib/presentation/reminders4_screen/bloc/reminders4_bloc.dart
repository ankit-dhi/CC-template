import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewsection8_item_model.dart';
import 'package:ankit_s_application110/presentation/reminders4_screen/models/reminders4_model.dart';
part 'reminders4_event.dart';
part 'reminders4_state.dart';

/// A bloc that manages the state of a Reminders4 according to the event that is dispatched to it.
class Reminders4Bloc extends Bloc<Reminders4Event, Reminders4State> {
  Reminders4Bloc(Reminders4State initialState) : super(initialState) {
    on<Reminders4InitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    Reminders4InitialEvent event,
    Emitter<Reminders4State> emit,
  ) async {
    emit(state.copyWith(
        reminders4ModelObj: state.reminders4ModelObj?.copyWith(
            chipviewsection8ItemList: fillChipviewsection8ItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<Reminders4State> emit,
  ) {
    List<Chipviewsection8ItemModel> newList =
        List<Chipviewsection8ItemModel>.from(
            state.reminders4ModelObj!.chipviewsection8ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        reminders4ModelObj: state.reminders4ModelObj
            ?.copyWith(chipviewsection8ItemList: newList)));
  }

  List<Chipviewsection8ItemModel> fillChipviewsection8ItemList() {
    return List.generate(7, (index) => Chipviewsection8ItemModel());
  }
}
