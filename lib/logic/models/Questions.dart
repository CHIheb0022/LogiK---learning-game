class Questionl {
  final int id, answer;
  final String questionl;
  final List<String> options;

  Questionl({required this.id, required this.questionl, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Calcium is necessary for strong bones. Milk contains calcium . So the more milk you drink, the taller you will be.",
    "options": ['valid', 'not valid'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Our government should either spend less or raise taxes. Raising taxes is impossible  . Our government should not do what is impossible. So our government should spend less.",
    "options": ['valid', 'not valid'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "If Anna is guilty, Beth is also guilty.If Beth is not guilty, then Cathy is guilty.So if Anna is not guilty, then Cathy is.",
    "options": ['valid', 'not valid'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Socrates is a philosopher.All philosophers like thinking.So Socrates likes thinking.",
    "options": ['valid', 'not valid'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "Whenever Anil is here, Kumar is also here.Anil is not here.So Kumar is not here.",
    "options": ['valid', 'not valid'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Most drug addicts are depressed people.Most depressed people are lonely.So most drug addicts are lonely. ",
    "options": ['valid', 'not valid'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Nothing that is cheap is good.So, nothing that is good is cheap.",
    "options": ['valid', 'not valid'],
    "answer_index": 0,
  },
   {
    "id": 8,
    "question": "If there is an earthquake, the detector will send a message.No message has been sent.So there was no earthquake.",
     "options": ['valid', 'not valid'],
     "answer_index": 0,
  },
   {
    "id": 9,
    "question": "Romeo said that everyone loves Juliet.Everything that Romeo has said is false.So nobody loves Juliet.",
     "options": ['valid', 'not valid'],
     "answer_index": 1,
  },
   {
    "id": 10,
    "question": "If there is life on Mars, then Mars contains water.If Mars has ice, it contains water.There is ice on Mars.So there is life on Mars.",
     "options": ['valid', 'not valid'],
     "answer_index": 1,
  },

];
