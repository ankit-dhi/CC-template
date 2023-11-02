// ignore_for_file: must_be_immutable

part of 'course_details_bloc.dart';

/// Represents the state of CourseDetails in the application.
class CourseDetailsState extends Equatable {
  CourseDetailsState({this.courseDetailsModelObj});

  CourseDetailsModel? courseDetailsModelObj;

  @override
  List<Object?> get props => [
        courseDetailsModelObj,
      ];
  CourseDetailsState copyWith({CourseDetailsModel? courseDetailsModelObj}) {
    return CourseDetailsState(
      courseDetailsModelObj:
          courseDetailsModelObj ?? this.courseDetailsModelObj,
    );
  }
}
