import '../../../core/app_export.dart';

/// This class is used in the [sleep_item_widget] screen.
class SleepItemModel {
  SleepItemModel({
    this.iconButton,
    this.all,
    this.id,
  }) {
    iconButton = iconButton ?? ImageConstant.imgFrameIndigo50;
    all = all ?? "All";
    id = id ?? "";
  }

  String? iconButton;

  String? all;

  String? id;
}
