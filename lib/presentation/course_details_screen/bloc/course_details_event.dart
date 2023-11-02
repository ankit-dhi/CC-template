// ignore_for_file: must_be_immutable

part of 'course_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CourseDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CourseDetailsEvent extends Equatable {}

/// Event that is dispatched when the CourseDetails widget is first created.
class CourseDetailsInitialEvent extends CourseDetailsEvent {
  @override
  List<Object?> get props => [];
}
