
class Monkey extends AngryMonster {
 
 PImage monkeyImg = loadImage("monkey.jpeg");
  
 public Monkey() {
   super.warCry = "The bible says I'm right, now die!";
 }
 
 public void yell() {
   println(super.warCry);
 }
 
 public void render(int x, int y){
     super.render(x,y);
    
     image(monkeyImg, x,y,w,h);
   
   }
  
}
