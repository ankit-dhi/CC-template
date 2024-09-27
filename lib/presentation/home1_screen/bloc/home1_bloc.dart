import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/start1_item_model.dart';
import '../models/focus1_item_model.dart';
import 'package:ankit_s_application110/presentation/home1_screen/models/home1_model.dart';
part 'home1_event.dart';
part 'home1_state.dart';

/// A bloc that manages the state of a Home1 according to the event that is dispatched to it.
class Home1Bloc extends Bloc<Home1Event, Home1State> {
  Home1Bloc(Home1State initialState) : super(initialState) {
    on<Home1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Home1InitialEvent event,
    Emitter<Home1State> emit,
  ) async {
    emit(state.copyWith(
        home1ModelObj: state.home1ModelObj?.copyWith(
      start1ItemList: fillStart1ItemList(),
      focus1ItemList: fillFocus1ItemList(),
    )));
  }

  List<Start1ItemModel> fillStart1ItemList() {
    return [
      Start1ItemModel(
          basics: "Basics",
          price: "COURSE",
          basics1: ImageConstant.imgProfile,
          time: "3-10 MIN")
    ];
  }

  List<Focus1ItemModel> fillFocus1ItemList() {
    return [
      Focus1ItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      Focus1ItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      Focus1ItemModel(
          focus1: "Happiness ", meditation: "MEDITATION", time: "3-10 MIN")
    ];
  }
}
