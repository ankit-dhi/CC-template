import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/start4_item_model.dart';
import '../models/focus4_item_model.dart';
import 'package:ankit_s_application110/presentation/home4_screen/models/home4_model.dart';
part 'home4_event.dart';
part 'home4_state.dart';

/// A bloc that manages the state of a Home4 according to the event that is dispatched to it.
class Home4Bloc extends Bloc<Home4Event, Home4State> {
  Home4Bloc(Home4State initialState) : super(initialState) {
    on<Home4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Home4InitialEvent event,
    Emitter<Home4State> emit,
  ) async {
    emit(state.copyWith(
        home4ModelObj: state.home4ModelObj?.copyWith(
      start4ItemList: fillStart4ItemList(),
      focus4ItemList: fillFocus4ItemList(),
    )));
  }

  List<Start4ItemModel> fillStart4ItemList() {
    return [
      Start4ItemModel(
          basics: "Basics",
          price: "COURSE",
          basics1: ImageConstant.imgProfile,
          time: "3-10 MIN")
    ];
  }

  List<Focus4ItemModel> fillFocus4ItemList() {
    return [
      Focus4ItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      Focus4ItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      Focus4ItemModel(
          focus1: "Happiness ", meditation: "MEDITATION", time: "3-10 MIN")
    ];
  }
}
