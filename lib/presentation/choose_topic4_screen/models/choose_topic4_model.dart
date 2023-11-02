// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'choosetopicgrid3_item_model.dart';

/// This class defines the variables used in the [choose_topic4_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseTopic4Model extends Equatable {
  ChooseTopic4Model({this.choosetopicgrid3ItemList = const []}) {}

  List<Choosetopicgrid3ItemModel> choosetopicgrid3ItemList;

  ChooseTopic4Model copyWith(
      {List<Choosetopicgrid3ItemModel>? choosetopicgrid3ItemList}) {
    return ChooseTopic4Model(
      choosetopicgrid3ItemList:
          choosetopicgrid3ItemList ?? this.choosetopicgrid3ItemList,
    );
  }

  @override
  List<Object?> get props => [choosetopicgrid3ItemList];
}
