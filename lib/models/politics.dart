class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  StateQuestion(
    text:
        "Which component is used to compile, debug and execute the java programs?",
    options: [
      const StateOption(text: "JRE", isCorrect: false),
      const StateOption(text: "JIT", isCorrect: false),
      const StateOption(text: "JDK", isCorrect: true),
      const StateOption(text: "JVM", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "JDK", isCorrect: true),
  ),
  StateQuestion(
    text:
        "Which one of the following is not a Java feature?",
    options: [
      const StateOption(text: "Object-oriented", isCorrect: false),
      const StateOption(text: "Use of pointers", isCorrect: true),
      const StateOption(text: "Portable", isCorrect: false),
      const StateOption(text: "Dynamic and Extensible", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "Use of pointers", isCorrect: true),
  ),
  StateQuestion(
    text:
        "Which of these cannot be used for a variable name in Java?",
    options: [
      const StateOption(text: "keyword", isCorrect: true),
      const StateOption(text: " identifier & keyword", isCorrect: false),
      const StateOption(text: "identifier", isCorrect: false),
      const StateOption(text: "none of the mentioned", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "keyword", isCorrect: true),
  ),

  StateQuestion(
    text:
        "Which of the following is not an OOPS concept in Java?",
    options: [
      const StateOption(text: "Compilation", isCorrect: true),
      const StateOption(text: "Polymorphism", isCorrect: false),
      const StateOption(text: "Inheritance", isCorrect: false),
      const StateOption(text: "Encapsulation", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "Compilation", isCorrect: true),
  ),
  // other 4
  StateQuestion(
    text:
        "What is the extension of java code files?",
    options: [
      const StateOption(text: ".js", isCorrect: false),
      const StateOption(text: ".txt", isCorrect: false),
      const StateOption(text: ".class", isCorrect: false),
      const StateOption(text: ".java", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const StateOption(text: ".java", isCorrect: true),
  ),
  StateQuestion(
    text: "Which environment variable is used to set the java path?",
    options: [
      const StateOption(text: "JAVA_HOME", isCorrect: true),
      const StateOption(text: "JavaPATH", isCorrect: false),
      const StateOption(text: "JAVA", isCorrect: false),
      const StateOption(text: "MAVEN_Path", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "JAVA_HOME", isCorrect: true),
  ),

];
