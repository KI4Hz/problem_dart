import 'dart:io';
void main()
{
  print('ใส่จำนวนสินค้า :');
  int product = int.parse(stdin.readLineSync()!);

  print('กรุณากรอกราคาต่อหน่วย :');
  double price = double.parse(stdin.readLineSync()!);

  double totalprice = product * price;
  print('ราคาทั้งหมด :'+ totalprice.toString());
  
  if(product >= 10){  
    double discountAmount = 0.20 * totalprice;
    double finalprice = totalprice - discountAmount;
    print('ซื้อ 10 ชิ้นได้ส่วนลด 20%');
    print('ราคารวมส่วนลดแล้ว :'+finalprice.toString());
  }else if(product >= 5){
    double discountAmount = 0.10 * totalprice;
    double finalprice = totalprice - discountAmount;
    print('ซื้อ 5 ชิ้นได้ส่วนลด 10%');
    print('ราคารวมส่วนลดแล้ว :'+finalprice.toString());
  }
}