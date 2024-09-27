// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleep2_item_model.dart';
import 'sleep3_item_model.dart';

/// This class defines the variables used in the [sleep1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Sleep1Model extends Equatable {
  Sleep1Model({
    this.sleep2ItemList = const [],
    this.sleep3ItemList = const [],
  }) {}

  List<Sleep2ItemModel> sleep2ItemList;

  List<Sleep3ItemModel> sleep3ItemList;

  Sleep1Model copyWith({
    List<Sleep2ItemModel>? sleep2ItemList,
    List<Sleep3ItemModel>? sleep3ItemList,
  }) {
    return Sleep1Model(
      sleep2ItemList: sleep2ItemList ?? this.sleep2ItemList,
      sleep3ItemList: sleep3ItemList ?? this.sleep3ItemList,
    );
  }

  @override
  List<Object?> get props => [sleep2ItemList, sleep3ItemList];
}
