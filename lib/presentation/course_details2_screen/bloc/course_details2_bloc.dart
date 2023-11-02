import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coursedetailslist_item_model.dart';
import 'package:ankit_s_application110/presentation/course_details2_screen/models/course_details2_model.dart';
part 'course_details2_event.dart';
part 'course_details2_state.dart';

/// A bloc that manages the state of a CourseDetails2 according to the event that is dispatched to it.
class CourseDetails2Bloc
    extends Bloc<CourseDetails2Event, CourseDetails2State> {
  CourseDetails2Bloc(CourseDetails2State initialState) : super(initialState) {
    on<CourseDetails2InitialEvent>(_onInitialize);
  }

  _onInitialize(
    CourseDetails2InitialEvent event,
    Emitter<CourseDetails2State> emit,
  ) async {
    emit(state.copyWith(
        courseDetails2ModelObj: state.courseDetails2ModelObj?.copyWith(
            coursedetailslistItemList: fillCoursedetailslistItemList())));
  }

  List<CoursedetailslistItemModel> fillCoursedetailslistItemList() {
    return List.generate(1, (index) => CoursedetailslistItemModel());
  }
}
