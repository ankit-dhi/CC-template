// ignore_for_file: must_be_immutable

part of 'course_details3_bloc.dart';

/// Represents the state of CourseDetails3 in the application.
class CourseDetails3State extends Equatable {
  CourseDetails3State({this.courseDetails3ModelObj});

  CourseDetails3Model? courseDetails3ModelObj;

  @override
  List<Object?> get props => [
        courseDetails3ModelObj,
      ];
  CourseDetails3State copyWith({CourseDetails3Model? courseDetails3ModelObj}) {
    return CourseDetails3State(
      courseDetails3ModelObj:
          courseDetails3ModelObj ?? this.courseDetails3ModelObj,
    );
  }
}
