void main(){

  int a = 10, b = 20;

  if(a>b){
    print("$a büyüktür $b");
  }else{
    print("$b büyüktür $a");
  }

  String gun = "Çarşamba";

  switch(gun){
    case "Pazartesi":
      print("Hafta Başladı!");
      break;
    case "Salı":
      print("Hafta dün başladı!");
      break;
    default:
      print("Haftanın diğer günlerinden birisi!");

  }

}