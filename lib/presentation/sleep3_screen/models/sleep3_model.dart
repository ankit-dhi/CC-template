// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleep6_item_model.dart';
import 'sleep7_item_model.dart';

/// This class defines the variables used in the [sleep3_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Sleep3Model extends Equatable {
  Sleep3Model({
    this.sleep6ItemList = const [],
    this.sleep7ItemList = const [],
  }) {}

  List<Sleep6ItemModel> sleep6ItemList;

  List<Sleep7ItemModel> sleep7ItemList;

  Sleep3Model copyWith({
    List<Sleep6ItemModel>? sleep6ItemList,
    List<Sleep7ItemModel>? sleep7ItemList,
  }) {
    return Sleep3Model(
      sleep6ItemList: sleep6ItemList ?? this.sleep6ItemList,
      sleep7ItemList: sleep7ItemList ?? this.sleep7ItemList,
    );
  }

  @override
  List<Object?> get props => [sleep6ItemList, sleep7ItemList];
}
