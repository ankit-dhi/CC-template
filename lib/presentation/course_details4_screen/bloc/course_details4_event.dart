// ignore_for_file: must_be_immutable

part of 'course_details4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CourseDetails4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CourseDetails4Event extends Equatable {}

/// Event that is dispatched when the CourseDetails4 widget is first created.
class CourseDetails4InitialEvent extends CourseDetails4Event {
  @override
  List<Object?> get props => [];
}
