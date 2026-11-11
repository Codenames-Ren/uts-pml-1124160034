class Profile {
  final String name, nim, prodi, kelas, bio, email, phone, github;

  const Profile({
    required this.name,
    required this.nim,
    required this.prodi,
    required this.kelas,
    required this.bio,
    required this.email,
    required this.phone,
    required this.github,
  });

  Profile copyWith({
    String? name,
    String? bio,
    String? email,
    String? hp,
    String? github,
  }) => Profile(
    name: name ?? this.name,
    nim: nim,
    prodi: prodi,
    kelas: kelas,
    bio: bio ?? this.bio,
    email: email ?? this.email,
    phone: phone,
    github: github ?? this.github,
  );
}
