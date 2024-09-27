import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/start3_item_model.dart';
import '../models/focus3_item_model.dart';
import 'package:ankit_s_application110/presentation/home3_screen/models/home3_model.dart';
part 'home3_event.dart';
part 'home3_state.dart';

/// A bloc that manages the state of a Home3 according to the event that is dispatched to it.
class Home3Bloc extends Bloc<Home3Event, Home3State> {
  Home3Bloc(Home3State initialState) : super(initialState) {
    on<Home3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Home3InitialEvent event,
    Emitter<Home3State> emit,
  ) async {
    emit(state.copyWith(
        home3ModelObj: state.home3ModelObj?.copyWith(
      start3ItemList: fillStart3ItemList(),
      focus3ItemList: fillFocus3ItemList(),
    )));
  }

  List<Start3ItemModel> fillStart3ItemList() {
    return [
      Start3ItemModel(
          basics: "Basics",
          price: "COURSE",
          basics1: ImageConstant.imgProfile,
          time: "3-10 MIN")
    ];
  }

  List<Focus3ItemModel> fillFocus3ItemList() {
    return [
      Focus3ItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      Focus3ItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      Focus3ItemModel(
          focus1: "Happiness ", meditation: "MEDITATION", time: "3-10 MIN")
    ];
  }
}
