class PowerStats {
  String intelligence;
  String strength;
  String speed;
  String durability;
  String power;
  String combat;

  PowerStats(
      {required this.intelligence,
      required this.strength,
      required this.speed,
      required this.durability,
      required this.power,
      required this.combat});

  factory PowerStats.fromJson(Map<String, dynamic> map) {
    return PowerStats(
      intelligence: map['intelligence'],
      strength: map['strength'],
      speed: map['speed'],
      durability: map['durability'],
      power: map['durability'],
      combat: map['combat'],
    );
  }
}
