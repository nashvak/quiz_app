class Question {
  final String text;
  final List<String> answers;
  const Question(this.text, this.answers);

//while shuffling the list it will effect the original list
  List<String> getshuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
