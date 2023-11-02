import '../../../core/app_export.dart';

/// This class is used in the [choosetopicgrid1_item_widget] screen.
class Choosetopicgrid1ItemModel {
  Choosetopicgrid1ItemModel({
    this.reduceStress,
    this.reduceStressImage,
    this.id,
  }) {
    reduceStress = reduceStress ?? "Reduce Stress";
    reduceStressImage =
        reduceStressImage ?? ImageConstant.imgMaskGroupDeepOrange400;
    id = id ?? "";
  }

  String? reduceStress;

  String? reduceStressImage;

  String? id;
}
