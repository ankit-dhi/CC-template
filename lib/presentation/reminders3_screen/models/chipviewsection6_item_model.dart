// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewsection6_item_widget] screen.
class Chipviewsection6ItemModel extends Equatable {
  Chipviewsection6ItemModel({
    this.su = "SU",
    this.isSelected = false,
  }) {}

  String su;

  bool isSelected;

  Chipviewsection6ItemModel copyWith({
    String? su,
    bool? isSelected,
  }) {
    return Chipviewsection6ItemModel(
      su: su ?? this.su,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [su, isSelected];
}
