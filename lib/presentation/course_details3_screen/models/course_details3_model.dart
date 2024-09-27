// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'coursedetailslist1_item_model.dart';

/// This class defines the variables used in the [course_details3_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CourseDetails3Model extends Equatable {
  CourseDetails3Model({this.coursedetailslist1ItemList = const []}) {}

  List<Coursedetailslist1ItemModel> coursedetailslist1ItemList;

  CourseDetails3Model copyWith(
      {List<Coursedetailslist1ItemModel>? coursedetailslist1ItemList}) {
    return CourseDetails3Model(
      coursedetailslist1ItemList:
          coursedetailslist1ItemList ?? this.coursedetailslist1ItemList,
    );
  }

  @override
  List<Object?> get props => [coursedetailslist1ItemList];
}
