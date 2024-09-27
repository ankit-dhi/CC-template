// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'choosetopicgrid_item_model.dart';

/// This class defines the variables used in the [choose_topic_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseTopicModel extends Equatable {
  ChooseTopicModel({this.choosetopicgridItemList = const []}) {}

  List<ChoosetopicgridItemModel> choosetopicgridItemList;

  ChooseTopicModel copyWith(
      {List<ChoosetopicgridItemModel>? choosetopicgridItemList}) {
    return ChooseTopicModel(
      choosetopicgridItemList:
          choosetopicgridItemList ?? this.choosetopicgridItemList,
    );
  }

  @override
  List<Object?> get props => [choosetopicgridItemList];
}
