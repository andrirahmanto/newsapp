import 'package:equatable/equatable.dart';

class UserAuthEntity extends Equatable {
  final String userId;
  final String nik;
  final int systemRoleId;
  final String systemRole;
  final String name;
  final String email;
  final String phone;
  final String departmentId;
  final String department;
  final String siteLocationId;
  final String siteLocation;

  const UserAuthEntity({
    required this.userId,
    required this.nik,
    required this.systemRoleId,
    required this.systemRole,
    required this.name,
    required this.email,
    required this.phone,
    required this.departmentId,
    required this.department,
    required this.siteLocationId,
    required this.siteLocation,
  });

  @override
  List<Object?> get props => [
        userId,
        nik,
        systemRoleId,
        systemRole,
        name,
        email,
        phone,
        departmentId,
        department,
        siteLocationId,
        siteLocation,
      ];
}
