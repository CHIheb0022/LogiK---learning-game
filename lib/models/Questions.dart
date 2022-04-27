class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "how many tunisia play world cup",
    "options": ['4', '3', '5', '7>>'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "best team in tunisia",
    "options": ['est', 'css', 'ess', 'CAB'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "when tunisia won african cup",
    "options": ['2004', '2006', '2008', '2010>>'],
    "answer_index": 0,
  },
];
