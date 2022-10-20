import "package:cloud_firestore/cloud_firestore.dart";

class UserData {
  final String fullname;
  final String email;
  var password;

  UserData({
    required this.email,
    required this.fullname,
    required this.password,
  });

  factory UserData.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return UserData(
        fullname: data?['fullname'],
        email: data?['email'],
        password: data?['password']);
  }
  Map<String, dynamic> toFirestore() {
    return {
      if (fullname.isNotEmpty) "fullname": fullname,
      if (email.isNotEmpty) "email": email,
      if (password.isNotEmpty) "password": password,
    };
  }
}
