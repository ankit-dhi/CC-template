/// This class is used in the [durationstaggered_item_widget] screen.
class DurationstaggeredItemModel {
  DurationstaggeredItemModel({
    this.duration,
    this.id,
  }) {
    duration = duration ?? "7 Days of Calm";
    id = id ?? "";
  }

  String? duration;

  String? id;
}
