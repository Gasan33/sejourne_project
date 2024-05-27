
/// Model class representing user data
class UserModel {
  // keep those values finale which you do not want to update_personal_info
  final int id;
  final String name;
  final String email;

  /// Constructor for UserModel
  UserModel({
    required this.id,
    required this.name,
    required this.email,
  });





  /// Static function to create an empty user model
  static UserModel empty() => UserModel(
    id: -1,
    name: "",
    email: "",
      );

  /// Factory method to create a UserModel from a firebase snapshot
  factory UserModel.fromJson(Map<String, dynamic> json) {
    if (json.isNotEmpty) {
      return UserModel(
        id: json["id"],
        name: json['name'] ?? '',
        email: json['email'] ?? '',
      );
    }
    return UserModel.empty();
  }
}
