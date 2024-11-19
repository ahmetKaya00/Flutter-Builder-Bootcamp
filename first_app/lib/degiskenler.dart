void main(){
  //Değişken tanımlama
  int yas = 30;
  double boy = 1.80;
  String isim = "Ahmet";

  //var
  var sehir = "Mersin";
  var kilo = 75.5;

  // kilo = "76"; Tür ve değer ataması olmuyor

  print("Ad: $isim, Yaş: $yas, Boy: $boy, Şehir: $sehir, Kilo: $kilo");

  //Dinamik tür

  dynamic dinamikDeger = "Merhaba";
  print(dinamikDeger);
  dinamikDeger = 123;
  print(dinamikDeger);

  const pi = 3.14;
 // const tarih = DateTime.now()()
  final tarih = DateTime.now();

  print("Pi Sabiti: $pi, Tarih: $tarih");
}