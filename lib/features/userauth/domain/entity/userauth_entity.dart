import 'package:equatable/equatable.dart';

class UserAuthEntity extends Equatable {
  final String displayName;
  final String email;

  const UserAuthEntity({
    required this.displayName,
    required this.email,
  });

  @override
  List<Object?> get props => [
        displayName,
        email,
      ];
}
