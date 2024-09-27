import '../../../core/app_export.dart';

/// This class is used in the [sleep8_item_widget] screen.
class Sleep8ItemModel {
  Sleep8ItemModel({
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
