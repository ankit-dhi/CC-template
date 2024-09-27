// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'coursedetails_item_model.dart';

/// This class defines the variables used in the [course_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CourseDetailsModel extends Equatable {
  CourseDetailsModel({this.coursedetailsItemList = const []}) {}

  List<CoursedetailsItemModel> coursedetailsItemList;

  CourseDetailsModel copyWith(
      {List<CoursedetailsItemModel>? coursedetailsItemList}) {
    return CourseDetailsModel(
      coursedetailsItemList:
          coursedetailsItemList ?? this.coursedetailsItemList,
    );
  }

  @override
  List<Object?> get props => [coursedetailsItemList];
}
