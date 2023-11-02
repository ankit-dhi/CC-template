// ignore_for_file: must_be_immutable

part of 'course_details2_bloc.dart';

/// Represents the state of CourseDetails2 in the application.
class CourseDetails2State extends Equatable {
  CourseDetails2State({this.courseDetails2ModelObj});

  CourseDetails2Model? courseDetails2ModelObj;

  @override
  List<Object?> get props => [
        courseDetails2ModelObj,
      ];
  CourseDetails2State copyWith({CourseDetails2Model? courseDetails2ModelObj}) {
    return CourseDetails2State(
      courseDetails2ModelObj:
          courseDetails2ModelObj ?? this.courseDetails2ModelObj,
    );
  }
}
