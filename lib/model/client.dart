class Client {
  String id;
  String name;
  String horario;
  DateTime dateCreate;
  DateTime dateUpdate;

  Client({
    required this.id,
    required this.name,
    required this.horario,
    required this.dateCreate,
    required this.dateUpdate,
  });

  Client.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        horario = map["horario"],
        dateCreate = DateTime.parse(map["dateCreate"]),
        dateUpdate = DateTime.parse(map["dateUpdate"]);

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "horario": horario,
      "dateCreate": dateCreate.toString(),
      "dateUpdate": dateUpdate.toString(),
    };
  }
}