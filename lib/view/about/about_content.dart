import 'package:temp/components/cards/info_card.dart';
import 'package:temp/components/picture_and_text/left_picture.dart';
import 'package:temp/components/picture_and_text/top_picture.dart';

String placeholderURL = 'resources/misc/placeholder.png';

shortDescriptionAboutMe() {
  return new TopPicture('Who Am I',
      '''My name is Lukas, and I\'m a young guy from the the western part of the danish island of Zealand. More precisely the city of Holbæk which is 50 minuets drive awat from Copenhagen (capitol of Denmark)
    ''');
}

martialArts() {
  return new LeftPicture('Martial Arts',
      'My name is Lukas, and I\'m a young guy from the the western part of the danish island of Zealand. More precisely the city of Holbæk which is 50 minuets drive awat from Copenhagen (capitol of Denmark)');
}

crossfit() {
  return new InfoCard(
    placeholderURL,
    'Crossfit',
    'Stuff about crossfit',
    null,
    notImplemented: true,
  );
}

interestInProgramming() {
  return new InfoCard(
    placeholderURL,
    'Programming',
    'About my interest in programming',
    null,
    notImplemented: true,
  );
}
