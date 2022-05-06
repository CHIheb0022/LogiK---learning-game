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
        "Entomology is the science that studies",
    "options": ['Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Galileo was an Italian astronomer who",
    "options": ['developed the telescope', 'discovered four satellites of Jupiter', 'discovered that the movement of pendulum produces a regular time measurement', 'All of the above'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "First China War was fought between",
    "options": ['China and Britain','China and France','China and Japon','China and India'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Each year World Red Cross and Red Crescent Day is celebrated on",
    "options": ['	May 8','May 18','June 8','June 18'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "how many tunisia play world cup",
    "options": ['4', '3', '5', '7'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "During World War II, when did Germany attack France ",
    "options": ['1940', '1941', '1942', '1943'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Euclid was",
    "options": ['Greek mathematician','Contributor to the use of deductive principles of logic as the basis of geometry','Propounded the geometrical theorems','All of the above'],
    "answer_index": 3,
  },
   {
    "id": 8,
    "question": "What's the capital of Poland?",
    "options": ['Warsaw','Berlin','Paris','Dublin'],
    "answer_index": 0,
  },
   {
    "id": 9,
    "question": "Which country has the longest coastline in the world",
    "options": ['Russia', 'Canada', 'Indonesia', 'Australia'],
    "answer_index": 1,
  },
   {
    "id": 10,
    "question": "What year did the Titanic sink in the Atlantic Ocean",
    "options": ['1905', '1908', '1912', '1915'],
    "answer_index": 2,
  },
   {
    "id": 11,
    "question": "What is the chemical symbol for silver",
    "options": ['1972', '1976', '1980', '1984'],
    "answer_index": 0,
  },
   {
    "id": 12,
    "question": "In which year was The Godfather first released",
    "options": ['2004', '2006', '2008', '2010>>'],
    "answer_index": 0,
  },
   {
    "id": 13,
    "question": "when tunisia won african cup",
    "options": ['2004', '2006', '2008', '2010>>'],
    "answer_index": 0,
  },
];
