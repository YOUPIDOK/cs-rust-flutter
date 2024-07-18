class Toilet {
  final int id;
  final int companyId;
  final bool isMaintenance;
  final bool doorIsOpen;
  final bool isLocked;
  final String name;
  final double lat;
  final double long;

  Toilet({
    required this.id,
    required this.companyId,
    required this.isMaintenance,
    required this.doorIsOpen,
    required this.isLocked,
    required this.name,
    required this.lat,
    required this.long,
  });

  factory Toilet.fromJson(Map<String, dynamic> json) {
    return Toilet(
      id: json['id'],
      companyId: json['company_id'],
      isMaintenance: json['is_maintenance'],
      doorIsOpen: json['door_is_open'],
      isLocked: json['is_locked'],
      name: json['name'],
      lat: json['lat'],
      long: json['long'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'company_id': companyId,
      'is_maintenance': isMaintenance,
      'door_is_open': doorIsOpen,
      'is_locked': isLocked,
      'name': name,
      'lat': lat,
      'long': long,
    };
  }
}