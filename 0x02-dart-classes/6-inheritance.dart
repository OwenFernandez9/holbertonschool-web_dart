import '6-password.dart';

class User extends Password {
    int? id;
    String? name;
    int? age;
    double? height;
    String? user_password;

    User({
        this.id,
        this.name,
        this.age,
        this.height,
        this.user_password,
    }) : super(password: user_password ?? "");

    Map<String, dynamic> toJson() {
        return {
        'id': id,
        'name': name,
        'age': age,
        'height': height,
        };
    }

    static User fromJson(Map<dynamic, dynamic> userJson) {
        return User(
        id: userJson['id'] ?? 0,
        name: userJson['name'] ?? "",
        age: userJson['age'] ?? 0,
        height: (userJson['height'] ?? 0.0).toDouble(),
        user_password: userJson['user_password'] ?? "",
        );
    }

    @override
    String toString() {
        password = user_password ?? "";

        return "User(id : ${id ?? ''} ,name: ${name ?? ''}, age: ${age ?? ''}, height: ${height ?? ''}, Password: ${isValid()})";
    }
}
