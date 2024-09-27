// ignore_for_file: must_be_immutable

part of 'course_details3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CourseDetails3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CourseDetails3Event extends Equatable {}

/// Event that is dispatched when the CourseDetails3 widget is first created.
class CourseDetails3InitialEvent extends CourseDetails3Event {
  @override
  List<Object?> get props => [];
}
