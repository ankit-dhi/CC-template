import '../../../core/app_export.dart';

/// This class is used in the [start1_item_widget] screen.
class Start1ItemModel {
  Start1ItemModel({
    this.basics,
    this.price,
    this.basics1,
    this.time,
    this.id,
  }) {
    basics = basics ?? "Basics";
    price = price ?? "COURSE";
    basics1 = basics1 ?? ImageConstant.imgProfile;
    time = time ?? "3-10 MIN";
    id = id ?? "";
  }

  String? basics;

  String? price;

  String? basics1;

  String? time;

  String? id;
}
