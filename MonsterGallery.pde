import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;

Minim minimDrvr = new Minim(this);
List monsters;

public void setup() {
  size(1000,200);
  monsters = new ArrayList();

  monsters.add(new Vampire());
  monsters.add(new Unicorn());
  monsters.add(new Monkey());
  monsters.add(new KOAotic());
  monsters.add(new CaptainChaos());
  
}

public void draw() {
  for (int i = 0; i < monsters.size(); i++) {
  
    Monster m = (Monster) monsters.get(i);
   
    int xpos = i * 200; int ypos = 0;
   
    m.checkIfMouseOver(xpos, ypos, mouseX, mouseY);
  
    m.render(xpos, ypos);
  }  
}

public void mousePressed()
{
  for (int i = 0; i < monsters.size(); i++) {
    Monster m = (Monster) monsters.get(i);
  
    if (m.isMouseOver == true)
    {
      if (m instanceof FriendlyMonster)
      {
        ((FriendlyMonster)m).friendlyActions();
      }
      else if (m instanceof AngryMonster)
      {
        ((AngryMonster)m).angryActions();   
      }
      else if (m instanceof ChaoticMonster)
      {
        ((ChaoticMonster)m).chaoticActions();   
      }
    
      println("\n");
    }
    
    
  }
}
