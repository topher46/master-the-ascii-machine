
abstract class ChaoticMonster extends Monster {
  private String wonderWhat;

  public void chaoticActions()
  {
    println("The " + this.getClass().getSimpleName() + " is expounding chaos.");

    expounding();

  }

  abstract public void expounding();

  public void render(int x, int y)
//  {
//
//    if (isMouseOver == true)
//      tint(255,255,255);    //put random color in here
//    else
//      tint(100,100,100);
//  }
  
  {
    if (mouseY >= h/2)
    tint(60,random(255),60);    //put random color in here
    else
      tint(random(255),60,60);
    
  } 
  //add 2 new properties specific to Chaotic Monster -- they are like the above expounding property
  
  
}

