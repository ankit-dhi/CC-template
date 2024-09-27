// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'start4_item_model.dart';
import 'focus4_item_model.dart';

/// This class defines the variables used in the [home4_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Home4Model extends Equatable {
  Home4Model({
    this.start4ItemList = const [],
    this.focus4ItemList = const [],
  }) {}

  List<Start4ItemModel> start4ItemList;

  List<Focus4ItemModel> focus4ItemList;

  Home4Model copyWith({
    List<Start4ItemModel>? start4ItemList,
    List<Focus4ItemModel>? focus4ItemList,
  }) {
    return Home4Model(
      start4ItemList: start4ItemList ?? this.start4ItemList,
      focus4ItemList: focus4ItemList ?? this.focus4ItemList,
    );
  }

  @override
  List<Object?> get props => [start4ItemList, focus4ItemList];
}
