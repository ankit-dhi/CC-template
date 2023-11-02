/// This class is used in the [durationsection1_item_widget] screen.
class Durationsection1ItemModel {
  Durationsection1ItemModel({
    this.duration,
    this.id,
  }) {
    duration = duration ?? "7 Days of Calm";
    id = id ?? "";
  }

  String? duration;

  String? id;
}
