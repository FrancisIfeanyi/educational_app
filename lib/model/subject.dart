class Subject {
  String text;
  String instruction;
  String priceTag;

  Subject({
    required this.text,
    required this.instruction,
    required this.priceTag,
  });
}

class ProfileList {
  final iconType;
  String listName;
  ProfileList({required this.listName, this.iconType});
}

class Profile_Tile {
  String profileName;
  var numberValue;

  Profile_Tile({
    required this.profileName,
    required this.numberValue,
  });
}
