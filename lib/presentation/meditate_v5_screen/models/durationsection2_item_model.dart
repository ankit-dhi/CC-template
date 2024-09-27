/// This class is used in the [durationsection2_item_widget] screen.
class Durationsection2ItemModel {
  Durationsection2ItemModel({
    this.duration,
    this.id,
  }) {
    duration = duration ?? "7 Days of Calm";
    id = id ?? "";
  }

  String? duration;

  String? id;
}
