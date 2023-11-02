// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'start1_item_model.dart';
import 'focus1_item_model.dart';

/// This class defines the variables used in the [home1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Home1Model extends Equatable {
  Home1Model({
    this.start1ItemList = const [],
    this.focus1ItemList = const [],
  }) {}

  List<Start1ItemModel> start1ItemList;

  List<Focus1ItemModel> focus1ItemList;

  Home1Model copyWith({
    List<Start1ItemModel>? start1ItemList,
    List<Focus1ItemModel>? focus1ItemList,
  }) {
    return Home1Model(
      start1ItemList: start1ItemList ?? this.start1ItemList,
      focus1ItemList: focus1ItemList ?? this.focus1ItemList,
    );
  }

  @override
  List<Object?> get props => [start1ItemList, focus1ItemList];
}
