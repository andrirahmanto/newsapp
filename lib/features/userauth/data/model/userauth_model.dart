import '../../domain/entity/userauth_entity.dart';

class UserAuthModel {
  final String displayName;
  final String email;

  UserAuthModel({
    required this.displayName,
    required this.email,
  });

  factory UserAuthModel.fromStorage({
    required String displayName,
    required String email,
  }) {
    return UserAuthModel(
      displayName: displayName,
      email: email,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'email': email,
    };
  }

  UserAuthEntity toEntity() {
    return UserAuthEntity(
      displayName: displayName,
      email: email,
    );
  }
}
