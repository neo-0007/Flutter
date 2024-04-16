class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledList() {
    //Function that takes the original list and copies it to a new list shuffledList that shufffle its values
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
