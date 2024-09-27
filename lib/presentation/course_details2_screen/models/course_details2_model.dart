// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'coursedetailslist_item_model.dart';

/// This class defines the variables used in the [course_details2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CourseDetails2Model extends Equatable {
  CourseDetails2Model({this.coursedetailslistItemList = const []}) {}

  List<CoursedetailslistItemModel> coursedetailslistItemList;

  CourseDetails2Model copyWith(
      {List<CoursedetailslistItemModel>? coursedetailslistItemList}) {
    return CourseDetails2Model(
      coursedetailslistItemList:
          coursedetailslistItemList ?? this.coursedetailslistItemList,
    );
  }

  @override
  List<Object?> get props => [coursedetailslistItemList];
}
