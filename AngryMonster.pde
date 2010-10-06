//working angry monster before the adition of audio player

abstract class AngryMonster extends Monster {
  private String warCry;
  int howMn;

AudioSample angrySnd;

 public void spit() {
    println("I am a generic angry monster spitting on you!");  
   
 }
 
  public void angryActions()
  {
    
//    Class c = this.getClass();   The same as the following line
//    String s = c.getSimpleName();
//    println("The " + s + " is angry");
//    
    println("The " + this.getClass().getSimpleName() + " is being angry:");

    yell();
    spit();
    angrySnd.trigger();
  //    THIS TEST TDOES NOT WORK
    if (isMouseOver == true)
    println("TEST");
    else
    println("RUN");
  }
    
  

  abstract public void yell();

  //abstract public void spit();

  public void render(int x, int y)
  {

    if (isMouseOver == true)
      tint(255,0,0);
    else
      tint(255,255,255);
  }

}

