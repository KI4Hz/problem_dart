void main(){
  List<Map<String,String>> Student = 
  [{'name': 'Alice', 'grade': 'A'},
  {'name': 'Bob', 'grade': 'B'},
  {'name': 'Charlie', 'grade': 'A'}
  ];

  Map<String, List<String>> groupstudent = groupstudentbygrade(Student);
  print(groupstudent);
}

Map<String, List<String>> groupstudentbygrade(List<Map<String,String>> Student) {
  Map<String, List<String>> result = {};

  for (var student in Student) {
    String grade = student['grade']!;
    String name = student['name']!;

    if(!result.containsKey(grade)) {
      result[grade] = [];
    }
    result[grade]!.add(name);
  }
  return result;
}

