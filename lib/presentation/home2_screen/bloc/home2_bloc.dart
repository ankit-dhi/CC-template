import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/start2_item_model.dart';
import '../models/focus2_item_model.dart';
import 'package:ankit_s_application110/presentation/home2_screen/models/home2_model.dart';
part 'home2_event.dart';
part 'home2_state.dart';

/// A bloc that manages the state of a Home2 according to the event that is dispatched to it.
class Home2Bloc extends Bloc<Home2Event, Home2State> {
  Home2Bloc(Home2State initialState) : super(initialState) {
    on<Home2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Home2InitialEvent event,
    Emitter<Home2State> emit,
  ) async {
    emit(state.copyWith(
        home2ModelObj: state.home2ModelObj?.copyWith(
      start2ItemList: fillStart2ItemList(),
      focus2ItemList: fillFocus2ItemList(),
    )));
  }

  List<Start2ItemModel> fillStart2ItemList() {
    return [
      Start2ItemModel(
          basics: "Basics",
          price: "COURSE",
          basics1: ImageConstant.imgProfile,
          time: "3-10 MIN")
    ];
  }

  List<Focus2ItemModel> fillFocus2ItemList() {
    return [
      Focus2ItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      Focus2ItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      Focus2ItemModel(
          focus1: "Happiness ", meditation: "MEDITATION", time: "3-10 MIN")
    ];
  }
}
