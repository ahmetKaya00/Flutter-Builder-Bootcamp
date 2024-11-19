void main(){

  //for döngüsü

  for(int i = 0; i<5;i++){
    print("For döngüsü değer: $i");
  }

  //while döngüsü

  int j = 0;

  while(j<5){
    print("While döngüsü değer: $j");
    j++;
  }

  //forEach
  var liste = ["Ahmet","Ali",12];
  liste.forEach((isim)=>print("İsim: $isim"));
}