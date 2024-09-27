import '../../../core/app_export.dart';

/// This class is used in the [choosetopic_item_widget] screen.
class ChoosetopicItemModel {
  ChoosetopicItemModel({
    this.reduceStress,
    this.nineteen,
    this.id,
  }) {
    reduceStress = reduceStress ?? "Reduce Stress";
    nineteen = nineteen ?? ImageConstant.imgMaskGroupDeepOrange400;
    id = id ?? "";
  }

  String? reduceStress;

  String? nineteen;

  String? id;
}
