import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coursedetails1_item_model.dart';
import 'package:ankit_s_application110/presentation/course_details1_screen/models/course_details1_model.dart';
part 'course_details1_event.dart';
part 'course_details1_state.dart';

/// A bloc that manages the state of a CourseDetails1 according to the event that is dispatched to it.
class CourseDetails1Bloc
    extends Bloc<CourseDetails1Event, CourseDetails1State> {
  CourseDetails1Bloc(CourseDetails1State initialState) : super(initialState) {
    on<CourseDetails1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    CourseDetails1InitialEvent event,
    Emitter<CourseDetails1State> emit,
  ) async {
    emit(state.copyWith(
        courseDetails1ModelObj: state.courseDetails1ModelObj
            ?.copyWith(coursedetails1ItemList: fillCoursedetails1ItemList())));
  }

  List<Coursedetails1ItemModel> fillCoursedetails1ItemList() {
    return List.generate(1, (index) => Coursedetails1ItemModel());
  }
}
