// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'choosetopic_item_model.dart';

/// This class defines the variables used in the [choose_topic3_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChooseTopic3Model extends Equatable {
  ChooseTopic3Model({this.choosetopicItemList = const []}) {}

  List<ChoosetopicItemModel> choosetopicItemList;

  ChooseTopic3Model copyWith(
      {List<ChoosetopicItemModel>? choosetopicItemList}) {
    return ChooseTopic3Model(
      choosetopicItemList: choosetopicItemList ?? this.choosetopicItemList,
    );
  }

  @override
  List<Object?> get props => [choosetopicItemList];
}
