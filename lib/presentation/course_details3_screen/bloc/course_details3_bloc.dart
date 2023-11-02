import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coursedetailslist1_item_model.dart';
import 'package:ankit_s_application110/presentation/course_details3_screen/models/course_details3_model.dart';
part 'course_details3_event.dart';
part 'course_details3_state.dart';

/// A bloc that manages the state of a CourseDetails3 according to the event that is dispatched to it.
class CourseDetails3Bloc
    extends Bloc<CourseDetails3Event, CourseDetails3State> {
  CourseDetails3Bloc(CourseDetails3State initialState) : super(initialState) {
    on<CourseDetails3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    CourseDetails3InitialEvent event,
    Emitter<CourseDetails3State> emit,
  ) async {
    emit(state.copyWith(
        courseDetails3ModelObj: state.courseDetails3ModelObj?.copyWith(
            coursedetailslist1ItemList: fillCoursedetailslist1ItemList())));
  }

  List<Coursedetailslist1ItemModel> fillCoursedetailslist1ItemList() {
    return List.generate(1, (index) => Coursedetailslist1ItemModel());
  }
}
