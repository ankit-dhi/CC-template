import '../../../core/app_export.dart';

/// This class is used in the [searchsection1_item_widget] screen.
class Searchsection1ItemModel {
  Searchsection1ItemModel({
    this.search,
    this.all,
    this.id,
  }) {
    search = search ?? ImageConstant.imgSearch;
    all = all ?? "All";
    id = id ?? "";
  }

  String? search;

  String? all;

  String? id;
}
