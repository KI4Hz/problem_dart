import 'dart:io';
void main() {
  
  stdout.write("Enter a sentence: ");
  String userInput = stdin.readLineSync() ?? "";

  
  int totalWords = countTotalWords(userInput);
  int uniqueWords = countUniqueWords(userInput);

  // แสดงผลลัพธ์
  print("Total Words: $totalWords");
  print("Unique Words: $uniqueWords");
}

// ฟังก์ชันนับจำนวนคำทั้งหมด
int countTotalWords(String text) {
  List<String> words = text.split(RegExp(r'\s+')); 
  return words.length;
}

// ฟังก์ชันนับจำนวนคำที่ไม่ซ้ำ
int countUniqueWords(String text) {
  List<String> words = text.split(RegExp(r'\s+')); 
  Set<String> uniqueWords = Set.from(words); 
  return uniqueWords.length; 
}


