class CaptainChaos extends ChaoticMonster {
 
 PImage capChaosImg = loadImage("TheUltimateWarrior.gif");
  
 public CaptainChaos() {
   super.wonderWhat = "What are you gonna do when the ultimate chaos goes chaotic on you?";
 }
 
 public void expounding() {
   println(super.wonderWhat);
 }
 
 public void render(int x, int y){
     super.render(x,y);
    
     image(capChaosImg, x,y,w,h);
   
   }
  
}
