import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coursedetailslist2_item_model.dart';
import 'package:ankit_s_application110/presentation/course_details4_screen/models/course_details4_model.dart';
part 'course_details4_event.dart';
part 'course_details4_state.dart';

/// A bloc that manages the state of a CourseDetails4 according to the event that is dispatched to it.
class CourseDetails4Bloc
    extends Bloc<CourseDetails4Event, CourseDetails4State> {
  CourseDetails4Bloc(CourseDetails4State initialState) : super(initialState) {
    on<CourseDetails4InitialEvent>(_onInitialize);
  }

  _onInitialize(
    CourseDetails4InitialEvent event,
    Emitter<CourseDetails4State> emit,
  ) async {
    emit(state.copyWith(
        courseDetails4ModelObj: state.courseDetails4ModelObj?.copyWith(
            coursedetailslist2ItemList: fillCoursedetailslist2ItemList())));
  }

  List<Coursedetailslist2ItemModel> fillCoursedetailslist2ItemList() {
    return List.generate(1, (index) => Coursedetailslist2ItemModel());
  }
}
