// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewsection4_item_widget] screen.
class Chipviewsection4ItemModel extends Equatable {
  Chipviewsection4ItemModel({
    this.su = "SU",
    this.isSelected = false,
  }) {}

  String su;

  bool isSelected;

  Chipviewsection4ItemModel copyWith({
    String? su,
    bool? isSelected,
  }) {
    return Chipviewsection4ItemModel(
      su: su ?? this.su,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [su, isSelected];
}
