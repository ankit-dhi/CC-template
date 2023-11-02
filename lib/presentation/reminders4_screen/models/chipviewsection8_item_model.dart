// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewsection8_item_widget] screen.
class Chipviewsection8ItemModel extends Equatable {
  Chipviewsection8ItemModel({
    this.su = "SU",
    this.isSelected = false,
  }) {}

  String su;

  bool isSelected;

  Chipviewsection8ItemModel copyWith({
    String? su,
    bool? isSelected,
  }) {
    return Chipviewsection8ItemModel(
      su: su ?? this.su,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [su, isSelected];
}
