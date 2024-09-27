/// This class is used in the [durationsection_item_widget] screen.
class DurationsectionItemModel {
  DurationsectionItemModel({
    this.duration,
    this.id,
  }) {
    duration = duration ?? "7 Days of Calm";
    id = id ?? "";
  }

  String? duration;

  String? id;
}
