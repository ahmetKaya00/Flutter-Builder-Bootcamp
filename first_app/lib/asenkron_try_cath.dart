Future<void> veriGetir() async{
  try{
    print("Veri getiriliyor.....");
    await Future.delayed(Duration(seconds: 2));
    print("Veri Başarıyla Yüklendi");
  }catch(e){
    print("Bir hata oluştu: $e");
  }
}

void main() async{
  await veriGetir();
  print("Program sona erdi.");
}