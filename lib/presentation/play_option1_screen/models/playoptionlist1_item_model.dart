import '../../../core/app_export.dart';

/// This class is used in the [playoptionlist1_item_widget] screen.
class Playoptionlist1ItemModel {
  Playoptionlist1ItemModel({
    this.moonClouds,
    this.moonClouds1,
    this.time,
    this.sleepmusic,
    this.id,
  }) {
    moonClouds = moonClouds ?? ImageConstant.imgMaskGroup122x177;
    moonClouds1 = moonClouds1 ?? "Moon Clouds";
    time = time ?? "45 MIN";
    sleepmusic = sleepmusic ?? "SLEEP MUSIC";
    id = id ?? "";
  }

  String? moonClouds;

  String? moonClouds1;

  String? time;

  String? sleepmusic;

  String? id;
}
