class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text:
        "Which keyword is used for function in Python language?",
    options: [
      const NavigationsOption(text: "Function", isCorrect: false),
      const NavigationsOption(text: "Fun", isCorrect: false),
      const NavigationsOption(text: "def", isCorrect: true),
      const NavigationsOption(text: "Define", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "def", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "Which statements is used to create an empty set in Python?",
    options: [
      const NavigationsOption(text: "[]", isCorrect: false),
      const NavigationsOption(text: "set()", isCorrect: true),
      const NavigationsOption(text: "{}", isCorrect: false),
      const NavigationsOption(text: "()", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const NavigationsOption(text: "set()", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "Which character is used to give single-line comments in Python?",
    options: [
      const NavigationsOption(text: "#", isCorrect: true),
      const NavigationsOption(text: "//", isCorrect: false),
      const NavigationsOption(text: "!", isCorrect: false),
      const NavigationsOption(text: "*", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "#", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "Python supports the creation of anonymous functions at runtime, using a construct called _________",
    options: [
      const NavigationsOption(text: "lambda", isCorrect: true),
      const NavigationsOption(text: "anonymous", isCorrect: false),
      const NavigationsOption(text: "pi", isCorrect: false),
      const NavigationsOption(text: "none of the above", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const NavigationsOption(text: "lambda", isCorrect: true),
  ),
  // other 4
  NavigateQuestion(
    text:
        "What does pip stand for python?",
    options: [
      const NavigationsOption(text: "Pip Installs Python", isCorrect: false),
      const NavigationsOption(text: "Pip Installs Packages", isCorrect: false),
      const NavigationsOption(text: "All Of The Above", isCorrect: false),
      const NavigationsOption(text: "Preferred Installer Program", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(
      text: "Preferred Installer Program",
      isCorrect: true,
    ),
  ),
  NavigateQuestion(
    text:
        "Which of the following is not a core data type in Python programming?",
    options: [
      const NavigationsOption(
          text: "Class", isCorrect: true),
      const NavigationsOption(text: "Lists", isCorrect: false),
      const NavigationsOption(
          text: "Tuples", isCorrect: false),
      const NavigationsOption(
          text: "Dictionary", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(
        text: "Class", isCorrect: true),
  ),
];
