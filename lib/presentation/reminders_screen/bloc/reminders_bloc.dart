import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewsection_item_model.dart';
import 'package:ankit_s_application110/presentation/reminders_screen/models/reminders_model.dart';
part 'reminders_event.dart';
part 'reminders_state.dart';

/// A bloc that manages the state of a Reminders according to the event that is dispatched to it.
class RemindersBloc extends Bloc<RemindersEvent, RemindersState> {
  RemindersBloc(RemindersState initialState) : super(initialState) {
    on<RemindersInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    RemindersInitialEvent event,
    Emitter<RemindersState> emit,
  ) async {
    emit(state.copyWith(
        remindersModelObj: state.remindersModelObj?.copyWith(
            chipviewsectionItemList: fillChipviewsectionItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<RemindersState> emit,
  ) {
    List<ChipviewsectionItemModel> newList =
        List<ChipviewsectionItemModel>.from(
            state.remindersModelObj!.chipviewsectionItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        remindersModelObj: state.remindersModelObj
            ?.copyWith(chipviewsectionItemList: newList)));
  }

  List<ChipviewsectionItemModel> fillChipviewsectionItemList() {
    return List.generate(7, (index) => ChipviewsectionItemModel());
  }
}
