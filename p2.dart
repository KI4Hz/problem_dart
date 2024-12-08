void main(){
List<int> numbers = [10,24,35,65,12];
int min = MinValue(numbers);
int max = MaxValue(numbers);
int avg = AverageValue(numbers);


print('ค่าที่ต่ำสุดคือ : $min');
print('ค่าที่สูงสุดคือ : $max');
print('ค่าเฉลี่ยคือ : $avg');
}

int MinValue(List<int> numbers) {
  int min = numbers[0];
  for (int number in numbers) {
    if (number < min) {
      min = number;
    }
  }
  return min;
}

int MaxValue(List<int> numbers) {
  int max = numbers[0];
  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}

int AverageValue(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}