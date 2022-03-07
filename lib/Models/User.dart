class User {
  int id;
  String name;
  int civiPoints;
  int certifications;

  User(
      {required this.id,
      required this.name,
      required this.civiPoints,
      required this.certifications});

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'civiPoints': civiPoints,
        'certifications': certifications
      };
}
