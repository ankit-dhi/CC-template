// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'choosetopicgrid2_item_model.dart';

/// This class defines the variables used in the [choose_topic2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseTopic2Model extends Equatable {
  ChooseTopic2Model({this.choosetopicgrid2ItemList = const []}) {}

  List<Choosetopicgrid2ItemModel> choosetopicgrid2ItemList;

  ChooseTopic2Model copyWith(
      {List<Choosetopicgrid2ItemModel>? choosetopicgrid2ItemList}) {
    return ChooseTopic2Model(
      choosetopicgrid2ItemList:
          choosetopicgrid2ItemList ?? this.choosetopicgrid2ItemList,
    );
  }

  @override
  List<Object?> get props => [choosetopicgrid2ItemList];
}
