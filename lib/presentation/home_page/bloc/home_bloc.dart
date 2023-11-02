import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/start_item_model.dart';
import '../models/focus_item_model.dart';
import 'package:ankit_s_application110/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      startItemList: fillStartItemList(),
      focusItemList: fillFocusItemList(),
    )));
  }

  List<StartItemModel> fillStartItemList() {
    return [
      StartItemModel(
          basics: "Basics",
          price: "COURSE",
          basics1: ImageConstant.imgProfile,
          time: "3-10 MIN")
    ];
  }

  List<FocusItemModel> fillFocusItemList() {
    return [
      FocusItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      FocusItemModel(
          focus: ImageConstant.imgGroupTeal200,
          focus1: "Focus",
          meditation: "MEDITATION",
          time: "3-10 MIN"),
      FocusItemModel(
          focus1: "Happiness ", meditation: "MEDITATION", time: "3-10 MIN")
    ];
  }
}
