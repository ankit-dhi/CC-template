// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipviewsection_item_widget] screen.
class ChipviewsectionItemModel extends Equatable {
  ChipviewsectionItemModel({
    this.su = "SU",
    this.isSelected = false,
  }) {}

  String su;

  bool isSelected;

  ChipviewsectionItemModel copyWith({
    String? su,
    bool? isSelected,
  }) {
    return ChipviewsectionItemModel(
      su: su ?? this.su,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [su, isSelected];
}
