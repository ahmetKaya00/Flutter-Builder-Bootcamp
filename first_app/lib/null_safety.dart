void main(){

  String? isim = null;
  print(isim ?? "Varsayılan Değer");
  
  isim = "Ahmet";
  print(isim);

  if(isim != null){
    print("İsim uzunluğu: ${isim.length}");
  }
}