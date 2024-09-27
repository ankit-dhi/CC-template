import '../../../core/app_export.dart';

/// This class is used in the [searchsection_item_widget] screen.
class SearchsectionItemModel {
  SearchsectionItemModel({
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
