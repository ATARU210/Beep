
class ToDo {
  ToDo(
      {required this.uUID,
      required this.title,
      this.description,
      required this.duration,
      required this.interval,
      required this.vibration,
      required this.sound,
      required this.notification,
      required this.deactivate,
      required this.userId});

  String uUID;
  String title;
  String? description;
  DateTime duration;
  DateTime interval;
  bool vibration;
  bool sound;
  bool notification;
  bool deactivate;
  String userId;
}
