class Araba{
  String marka;
  int yil;

  Araba(this.marka, this.yil);

  void bilgiGoster(){
    print("Marka: $marka, Yıl: $yil");
  }
}

void main(){
  var araba = Araba("Toyota", 2020);
  araba.bilgiGoster();

  var digerAraba = Araba("BMW", 2021);
  digerAraba.bilgiGoster();
}