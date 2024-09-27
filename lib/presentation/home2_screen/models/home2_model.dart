// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'start2_item_model.dart';
import 'focus2_item_model.dart';

/// This class defines the variables used in the [home2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Home2Model extends Equatable {
  Home2Model({
    this.start2ItemList = const [],
    this.focus2ItemList = const [],
  }) {}

  List<Start2ItemModel> start2ItemList;

  List<Focus2ItemModel> focus2ItemList;

  Home2Model copyWith({
    List<Start2ItemModel>? start2ItemList,
    List<Focus2ItemModel>? focus2ItemList,
  }) {
    return Home2Model(
      start2ItemList: start2ItemList ?? this.start2ItemList,
      focus2ItemList: focus2ItemList ?? this.focus2ItemList,
    );
  }

  @override
  List<Object?> get props => [start2ItemList, focus2ItemList];
}
