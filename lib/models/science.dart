class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text:
        "Which of the following is the correct syntax of including a user defined header files in C++",
    options: [
      const WiidgetOption(text: "#include 'userdefined'", isCorrect: true),
      const WiidgetOption(text: "#include [userdefined] ", isCorrect: false),
      const WiidgetOption(text: "#include <userdefined.h>", isCorrect: false),
      const WiidgetOption(text: "#include <userdefined>", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "#include 'userdefined'", isCorrect: true),
  ),
  WidgetQuestion(
      text:
          " Which of the following is used for comments in C++?",
      options: [
        const WiidgetOption(text: "/* comment */", isCorrect: false),
        const WiidgetOption(text: "both // comment or /* comment */", isCorrect: true),
        const WiidgetOption(text: "// comment", isCorrect: false),
        const WiidgetOption(text: "// comment */", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "both // comment or /* comment */", isCorrect: true)),
  WidgetQuestion(
      text:
          "Which of the following extension is used for user-defined header file in c++?",
      options: [
        const WiidgetOption(text: "hg", isCorrect: false),
        const WiidgetOption(text: "cpp", isCorrect: false),
        const WiidgetOption(text: "hf", isCorrect: false),
        const WiidgetOption(text: "h", isCorrect: true),
      ],
      id: 2,
      correctAnswer:
          const WiidgetOption(text: "h", isCorrect: true)),
  WidgetQuestion(
      text:
          " Which of the following is a correct identifier in C++?",
      options: [
        const WiidgetOption(text: "7VARNAME", isCorrect: false),
        const WiidgetOption(text: "%var_name", isCorrect: false),
        const WiidgetOption(text: "VAR_1234", isCorrect: true),
        const WiidgetOption(text: "7var_name", isCorrect: false),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "VAR_1234", isCorrect: true)),
  WidgetQuestion(
      text:
          "Which of the following is not a type of Constructor in C++?",
      options: [
        const WiidgetOption(text: "Default constructor", isCorrect: false),
        const WiidgetOption(text: "Parameterized constructor", isCorrect: false),
        const WiidgetOption(text: "Copy constructor", isCorrect: false),
        const WiidgetOption(text: "Friend constructor", isCorrect: true),
      ],
      id: 4,
      correctAnswer: const WiidgetOption(text: "Friend constructor", isCorrect: true)),
  WidgetQuestion(
      text:
          "Which of the following approach is used by C++?",
      options: [
        const WiidgetOption(text: "Bottom-up", isCorrect: true),
        const WiidgetOption(text: "Right-left", isCorrect: false),
        const WiidgetOption(text: "Left-right", isCorrect: false),
        const WiidgetOption(text: "Top-down", isCorrect: false),
      ],
      id: 5,
      correctAnswer:
          const WiidgetOption(text: "Bottom-up", isCorrect: true)),
];
