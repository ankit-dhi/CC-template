/// This class is used in the [durationsection3_item_widget] screen.
class Durationsection3ItemModel {
  Durationsection3ItemModel({
    this.duration,
    this.id,
  }) {
    duration = duration ?? "7 Days of Calm";
    id = id ?? "";
  }

  String? duration;

  String? id;
}
