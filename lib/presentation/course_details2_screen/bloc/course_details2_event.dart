// ignore_for_file: must_be_immutable

part of 'course_details2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CourseDetails2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CourseDetails2Event extends Equatable {}

/// Event that is dispatched when the CourseDetails2 widget is first created.
class CourseDetails2InitialEvent extends CourseDetails2Event {
  @override
  List<Object?> get props => [];
}
