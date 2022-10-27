class UserModel {
  num id;
  String email;
  String firstName;
  String lastName;
  String avatar;
  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory UserModel.fromJson(json) => UserModel(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  // Json decoder for list of users
  static List<UserModel> listFromJson(list) =>
      List<UserModel>.from(list["data"].map((x) => UserModel.fromJson(x)));
}
