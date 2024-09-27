// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewsection2_item_widget] screen.
class Chipviewsection2ItemModel extends Equatable {
  Chipviewsection2ItemModel({
    this.su = "SU",
    this.isSelected = false,
  }) {}

  String su;

  bool isSelected;

  Chipviewsection2ItemModel copyWith({
    String? su,
    bool? isSelected,
  }) {
    return Chipviewsection2ItemModel(
      su: su ?? this.su,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [su, isSelected];
}
