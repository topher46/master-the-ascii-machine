
class KOAotic extends ChaoticMonster {
 
 PImage chaosImg = loadImage("KOAotic.jpeg");
  
 public KOAotic() {
   super.wonderWhat = "Give a hoot, blow your flute.";
 }
 
 public void expounding() {
   println(super.wonderWhat);
 }
 
 public void render(int x, int y){
     super.render(x,y);
    
     image(chaosImg, x,y,w,h);
   
   }
  
}
