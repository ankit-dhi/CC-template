// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'start3_item_model.dart';
import 'focus3_item_model.dart';

/// This class defines the variables used in the [home3_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Home3Model extends Equatable {
  Home3Model({
    this.start3ItemList = const [],
    this.focus3ItemList = const [],
  }) {}

  List<Start3ItemModel> start3ItemList;

  List<Focus3ItemModel> focus3ItemList;

  Home3Model copyWith({
    List<Start3ItemModel>? start3ItemList,
    List<Focus3ItemModel>? focus3ItemList,
  }) {
    return Home3Model(
      start3ItemList: start3ItemList ?? this.start3ItemList,
      focus3ItemList: focus3ItemList ?? this.focus3ItemList,
    );
  }

  @override
  List<Object?> get props => [start3ItemList, focus3ItemList];
}
