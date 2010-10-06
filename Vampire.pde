
class Vampire extends AngryMonster {
 
 PImage vampireImg = loadImage("vampire.jpeg");
  
 public Vampire() {
   super.howMn = 4;
   super.warCry = "I vant to suck your blood!";
   super.angrySnd = minimDrvr.loadSample ("82604__Robinhood76__01331_one_bite_of_carrot_2.wav");
 }
 
 public void yell() {
   println(super.warCry);
 }
 
 public void render(int x, int y){
     super.render(x,y);
    
     image(vampireImg, x,y,w,h);
   
   }
  public void spit() {
    println("I am a VVV angry monster spitting on you " + super.howMn + " times!");  
   
 }
}
