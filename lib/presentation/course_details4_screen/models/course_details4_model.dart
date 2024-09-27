// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'coursedetailslist2_item_model.dart';

/// This class defines the variables used in the [course_details4_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CourseDetails4Model extends Equatable {
  CourseDetails4Model({this.coursedetailslist2ItemList = const []}) {}

  List<Coursedetailslist2ItemModel> coursedetailslist2ItemList;

  CourseDetails4Model copyWith(
      {List<Coursedetailslist2ItemModel>? coursedetailslist2ItemList}) {
    return CourseDetails4Model(
      coursedetailslist2ItemList:
          coursedetailslist2ItemList ?? this.coursedetailslist2ItemList,
    );
  }

  @override
  List<Object?> get props => [coursedetailslist2ItemList];
}
