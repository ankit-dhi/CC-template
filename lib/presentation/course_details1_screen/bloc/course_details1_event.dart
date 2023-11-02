// ignore_for_file: must_be_immutable

part of 'course_details1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CourseDetails1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CourseDetails1Event extends Equatable {}

/// Event that is dispatched when the CourseDetails1 widget is first created.
class CourseDetails1InitialEvent extends CourseDetails1Event {
  @override
  List<Object?> get props => [];
}
