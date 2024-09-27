import '../../../core/app_export.dart';

/// This class is used in the [sleep7_item_widget] screen.
class Sleep7ItemModel {
  Sleep7ItemModel({
    this.nightIsland,
    this.nightIsland1,
    this.time,
    this.sleepmusic,
    this.id,
  }) {
    nightIsland = nightIsland ?? ImageConstant.imgGroupIndigo40001;
    nightIsland1 = nightIsland1 ?? "Night Island";
    time = time ?? "45 MIN";
    sleepmusic = sleepmusic ?? "SLEEP MUSIC";
    id = id ?? "";
  }

  String? nightIsland;

  String? nightIsland1;

  String? time;

  String? sleepmusic;

  String? id;
}