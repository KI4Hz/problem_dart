import 'dart:io';
void main() {
  Map<String, double> exchangeRates = {
    'USD': 0.029, 
    'EUR': 0.027, 
    'JPY': 3.92,  
    'GBP': 0.025  
  };

  print("กรุณาใส่จำนวนเงินบาทที่ต้องการแปลง:");
  double amount = double.parse(stdin.readLineSync()!);

  print("กรุณาเลือกสกุลเงินที่ต้องการแปลง (USD, EUR, JPY, GBP):");
  String currency = stdin.readLineSync()!.toUpperCase();

  if (exchangeRates.containsKey(currency)) {
    double convertedAmount = convertCurrency(amount, currency, exchangeRates);
    print('Input Amount: $amount \n'
          'Currency: $currency \n'
          'Converted Amount: $convertedAmount');
  } else {
    print("สกุลเงินที่เลือกไม่ถูกต้อง");
  }
}


double convertCurrency(double amount, String currency, Map<String, double> rates) {
  return amount * rates[currency]!;
}