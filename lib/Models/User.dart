class User {
  final int id;
  final String name;
  final int civiPoints;
  final int certifications;

  const User(
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
