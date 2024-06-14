/// A model class representing a profile.
class ProfileModel {
  /// Creates a [ProfileModel].
  ///
  /// The [name] and [email] parameters must not be null.
  const ProfileModel({
    required this.name,
    required this.email,
  });

  /// The name of the profile.
  final String name;

  /// The email of the profile.
  final String email;
}
