import '../../../core/app_export.dart';

/// This class is used in the [searchsection2_item_widget] screen.
class Searchsection2ItemModel {
  Searchsection2ItemModel({
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
