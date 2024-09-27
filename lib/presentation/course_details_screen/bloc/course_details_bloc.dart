import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coursedetails_item_model.dart';
import 'package:ankit_s_application110/presentation/course_details_screen/models/course_details_model.dart';
part 'course_details_event.dart';
part 'course_details_state.dart';

/// A bloc that manages the state of a CourseDetails according to the event that is dispatched to it.
class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  CourseDetailsBloc(CourseDetailsState initialState) : super(initialState) {
    on<CourseDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CourseDetailsInitialEvent event,
    Emitter<CourseDetailsState> emit,
  ) async {
    emit(state.copyWith(
        courseDetailsModelObj: state.courseDetailsModelObj
            ?.copyWith(coursedetailsItemList: fillCoursedetailsItemList())));
  }

  List<CoursedetailsItemModel> fillCoursedetailsItemList() {
    return List.generate(1, (index) => CoursedetailsItemModel());
  }
}
