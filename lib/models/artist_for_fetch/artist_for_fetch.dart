class ArtistForFetch {
  ArtistForFetch({
    required this.uid,
    required this.firstName,
    required this.lastName,
  });

  factory ArtistForFetch.fromMap(Map<String, dynamic> map) {
    return ArtistForFetch(
      uid: map['uid'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
    );
  }
  final String uid;
  final String firstName;
  final String lastName;

  @override
  String toString() {
    return 'ArtistForFetch{uid: $uid, firstName: $firstName, lastName: $lastName}';
  }
}
