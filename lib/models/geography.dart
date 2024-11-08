class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "Which data structure is used for implementing recursion?",
    options: [
      const LayOutOption(text: "Stack", isCorrect: true),
      const LayOutOption(text: "Queue", isCorrect: false),
      const LayOutOption(text: "List", isCorrect: false),
      const LayOutOption(text: "Array", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "Stack", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "The data structure required to check whether an expression contains a balanced parenthesis is?",
    options: [
      const LayOutOption(text: "Stack", isCorrect: true),
      const LayOutOption(text: "Queue", isCorrect: false),
      const LayOutOption(text: "Tree", isCorrect: false),
      const LayOutOption(text: "Array", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Stack", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "What is the value of the postfix expression 6 3 2 4 + – *?",
    options: [
      const LayOutOption(text: "-18", isCorrect: true),
      const LayOutOption(text: "74", isCorrect: false),
      const LayOutOption(text: "22", isCorrect: false),
      const LayOutOption(text: "40", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "-18", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "The data structure required for Breadth First Traversal on a graph is?",
    options: [
      const LayOutOption(text: "Array", isCorrect: false),
      const LayOutOption(text: "Stack", isCorrect: false),
      const LayOutOption(text: "Queue", isCorrect: true),
      const LayOutOption(text: "Tree", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const LayOutOption(text: "Queue", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
        "The prefix form of A-B/ (C * D ^ E) is?",
    options: [
      const LayOutOption(text: "-/*^ACBDE", isCorrect: false),
      const LayOutOption(text: "-A/BC*^DE", isCorrect: false),
      const LayOutOption(text: "-ABCD*^DE", isCorrect: false),
      const LayOutOption(text: "-A/B*C^DE", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "-A/B*C^DE", isCorrect: true),
  ),
  LayOutQuestion(
    text: "Which of the following application makes use of a circular linked list?",
    options: [
      const LayOutOption(text: "Allocating CPU to resources", isCorrect: true),
      const LayOutOption(text: "Recursive function calls", isCorrect: false),
      const LayOutOption(text: "Undo operation in a text editor", isCorrect: false),
      const LayOutOption(text: "Implement Hash Tables", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(text: "Allocating CPU to resources", isCorrect: true),
  ),
];
