import 'dart:convert';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));

String usuarioToJson(Usuario data) => json.encode(data.toJson());

class Usuario {
    final bool online;
    final String nombre;
    final String email;
    final String uid;

    Usuario({
        required this.online,
        required this.nombre,
        required this.email,
        required this.uid,
    });

    factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        online: json["online"],
        nombre: json["nombre"],
        email: json["email"],
        uid: json["uid"],
    );

    Map<String, dynamic> toJson() => {
        "online": online,
        "nombre": nombre,
        "email": email,
        "uid": uid,
    };
}
