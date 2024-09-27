// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleep4_item_model.dart';
import 'sleep5_item_model.dart';

/// This class defines the variables used in the [sleep2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Sleep2Model extends Equatable {
  Sleep2Model({
    this.sleep4ItemList = const [],
    this.sleep5ItemList = const [],
  }) {}

  List<Sleep4ItemModel> sleep4ItemList;

  List<Sleep5ItemModel> sleep5ItemList;

  Sleep2Model copyWith({
    List<Sleep4ItemModel>? sleep4ItemList,
    List<Sleep5ItemModel>? sleep5ItemList,
  }) {
    return Sleep2Model(
      sleep4ItemList: sleep4ItemList ?? this.sleep4ItemList,
      sleep5ItemList: sleep5ItemList ?? this.sleep5ItemList,
    );
  }

  @override
  List<Object?> get props => [sleep4ItemList, sleep5ItemList];
}
