// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'choosetopicgrid1_item_model.dart';

/// This class defines the variables used in the [choose_topic1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseTopic1Model extends Equatable {
  ChooseTopic1Model({this.choosetopicgrid1ItemList = const []}) {}

  List<Choosetopicgrid1ItemModel> choosetopicgrid1ItemList;

  ChooseTopic1Model copyWith(
      {List<Choosetopicgrid1ItemModel>? choosetopicgrid1ItemList}) {
    return ChooseTopic1Model(
      choosetopicgrid1ItemList:
          choosetopicgrid1ItemList ?? this.choosetopicgrid1ItemList,
    );
  }

  @override
  List<Object?> get props => [choosetopicgrid1ItemList];
}
