class UserModel {
  final int? id;
  final String? first_name;
  final int? heigth_feet;
  final int? height_inches;
  final String? last_name;
  final String? position;
  final Team? team;

  UserModel( {
    this.id,
    this.first_name,
    this.height_inches,
    this.heigth_feet,
    this.last_name,
    this.position,
    this.team,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'] ?? 0,
        first_name: json['first_name'] ?? '',
        height_inches: json['height_inches'] ?? 0,
        heigth_feet: json['heigth_feet'],
        last_name: json['last_name'],
        position: json['position'],
       team:Team.fromJson(json['team']),
    );
  }
}

class Team {
  final int? id;
  final String? abbreviation;
  final String? first_name;
  final String? city;
  final String? division;
  final String? full_name;
  final String? name;
  final String? conference;

  Team(
      {this.id,
      this.first_name,
      this.full_name,
      this.name,
      this.city,
      this.conference,
      this.abbreviation,
      this.division});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'] ?? 0,
      first_name: json['first_name']?? '',
      full_name: json['full_name']?? '',
      name: json['name']?? '',
      city: json['city']?? '',
      division: json['division']?? '',
      conference: json['conference']?? '',
      abbreviation: json['abbreviation']?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": first_name,
    "full_name": full_name,
    "name": name,
    "city": city,
    "conference": conference,
    "abbreviation": abbreviation,
    "division": division,
  };
}
