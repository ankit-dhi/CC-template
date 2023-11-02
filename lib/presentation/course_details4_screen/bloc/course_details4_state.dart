// ignore_for_file: must_be_immutable

part of 'course_details4_bloc.dart';

/// Represents the state of CourseDetails4 in the application.
class CourseDetails4State extends Equatable {
  CourseDetails4State({this.courseDetails4ModelObj});

  CourseDetails4Model? courseDetails4ModelObj;

  @override
  List<Object?> get props => [
        courseDetails4ModelObj,
      ];
  CourseDetails4State copyWith({CourseDetails4Model? courseDetails4ModelObj}) {
    return CourseDetails4State(
      courseDetails4ModelObj:
          courseDetails4ModelObj ?? this.courseDetails4ModelObj,
    );
  }
}
