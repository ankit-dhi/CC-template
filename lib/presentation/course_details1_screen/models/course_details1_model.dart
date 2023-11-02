// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'coursedetails1_item_model.dart';

/// This class defines the variables used in the [course_details1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CourseDetails1Model extends Equatable {
  CourseDetails1Model({this.coursedetails1ItemList = const []}) {}

  List<Coursedetails1ItemModel> coursedetails1ItemList;

  CourseDetails1Model copyWith(
      {List<Coursedetails1ItemModel>? coursedetails1ItemList}) {
    return CourseDetails1Model(
      coursedetails1ItemList:
          coursedetails1ItemList ?? this.coursedetails1ItemList,
    );
  }

  @override
  List<Object?> get props => [coursedetails1ItemList];
}
