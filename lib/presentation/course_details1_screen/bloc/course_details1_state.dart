// ignore_for_file: must_be_immutable

part of 'course_details1_bloc.dart';

/// Represents the state of CourseDetails1 in the application.
class CourseDetails1State extends Equatable {
  CourseDetails1State({this.courseDetails1ModelObj});

  CourseDetails1Model? courseDetails1ModelObj;

  @override
  List<Object?> get props => [
        courseDetails1ModelObj,
      ];
  CourseDetails1State copyWith({CourseDetails1Model? courseDetails1ModelObj}) {
    return CourseDetails1State(
      courseDetails1ModelObj:
          courseDetails1ModelObj ?? this.courseDetails1ModelObj,
    );
  }
}
