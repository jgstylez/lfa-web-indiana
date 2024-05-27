import 'package:collection/collection.dart';

enum OrderDeliveryStatus {
  Pending,
  In_Progress,
  Completed,
  Cancelled,
}

enum Notification {
  bol_received,
  invoice_paid,
  welcome,
  profile_updated,
  delivery_in_progress,
  delivery_completed,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (OrderDeliveryStatus):
      return OrderDeliveryStatus.values.deserialize(value) as T?;
    case (Notification):
      return Notification.values.deserialize(value) as T?;
    default:
      return null;
  }
}
