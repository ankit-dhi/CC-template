import '../../../core/app_export.dart';

/// This class is used in the [focus1_item_widget] screen.
class Focus1ItemModel {
  Focus1ItemModel({
    this.focus,
    this.focus1,
    this.meditation,
    this.time,
    this.id,
  }) {
    focus = focus ?? ImageConstant.imgGroupTeal200;
    focus1 = focus1 ?? "Focus";
    meditation = meditation ?? "MEDITATION";
    time = time ?? "3-10 MIN";
    id = id ?? "";
  }

  String? focus;

  String? focus1;

  String? meditation;

  String? time;

  String? id;
}