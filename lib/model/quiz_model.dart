class Quiz {
  final String title;
  final List<String> options;
  List<String> selectedOptions = [];

  Quiz(this.title, this.options);
}

List<Quiz> quizList = [
  Quiz(
    "How would your friends describe you?",
    ['Funny', 'Intelligent', 'Creative', 'Kind'],
  ),
  Quiz('Which would be your super power?',
      ['Teleportation', 'Invisibility', 'Flying', 'Time Travel']),
  Quiz('Select any of these that you are interested in learning', [
    'Creative Writing',
    'Video Editing',
    'Graphic Design',
    'Programming',
    'Videogame Design',
    'Dance',
    'Astronomy',
    'Product Design'
  ]),
  Quiz('How would your friends describe you?', [
    'Extrovert',
    'Introvert',
    'Crazy',
    'Photographer',
    'Imaginative',
  ]),
  Quiz('Can describe about your friends circle?',
      ['The risk taker', 'Help to other', 'Not deep thinker', 'Creative']),
];
