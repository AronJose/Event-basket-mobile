class EventCreationData {
  final String Event_name;
  final String place;
  final String address;
  final String desc;
  final List<String> services;
  final List<String> category;
  final List<String> provider;
  final List<String> providing;

  EventCreationData(
      {required this.Event_name,
      required this.place,
      required this.address,
      required this.desc,
      required this.services,
      required this.category,
      required this.provider,
     required this.providing});
}
