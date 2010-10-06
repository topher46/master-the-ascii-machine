import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class MonsterGallery extends PApplet {


List monsters;

public void setup() {
  size(600,200);
  monsters = new ArrayList();

  monsters.add(new Vampire());
  monsters.add(new Unicorn());
  monsters.add(new Monkey());
  
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
    
      println("\n");
    }
    
    
  }
}


abstract class AngryMonster extends Monster {
  private String warCry;

  public void angryActions()
  {
    println("The " + this.getClass().getSimpleName() + " is being angry:");

    yell();

  }

  abstract public void yell();

  public void render(int x, int y)
  {

    if (isMouseOver == true)
      tint(255,0,0);
    else
      tint(255,255,255);
  }
}



abstract class FriendlyMonster extends Monster {
  private List gifts = new ArrayList();

  public void friendlyActions()
  {
    println("The " + this.getClass().getSimpleName() + " is being friendly:");
    
    giveGifts(); 
    
  }

  abstract public void giveGifts();

  public void render(int x, int y)
  { 
    if (isMouseOver == true)
      tint(0,255,0);
    else
      tint(255,255,255);
  }
}


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

abstract class Monster {
  int w = 200;
  int h = 200;
  
  boolean isMouseOver = false;

  public abstract void render(int x, int y);  
  
  public void checkIfMouseOver(int xpos, int ypos, int mX, int mY) {
     if (mX > xpos && mX < xpos + w && mY > ypos && mY < ypos + h) {
       isMouseOver = true;
     }
     else {
       isMouseOver = false;
     }
  }
  
  
    
  
  
}



class Unicorn extends FriendlyMonster {

  PImage unicornImg = loadImage("unicorn.jpeg");
  public Unicorn() {
    super.gifts.add("a magical rainbow");
    super.gifts.add("a gumdrop");
  } 

  public void giveGifts() {
    print("Here are some gifts: ");

    for (int i = 0; i < super.gifts.size(); i++)
    {
      String g = (String) super.gifts.get(i);
      if (i != 0) print(" and ");

      print(g);
    }
  }

  public void render(int x, int y) {
    super.render(x,y);
    image(unicornImg, x,y,w,h);
  }
}


class Vampire extends AngryMonster {
 
 PImage vampireImg = loadImage("vampire.jpeg");
  
 public Vampire() {
   super.warCry = "I vant to suck your blood!";
 }
 
 public void yell() {
   println(super.warCry);
 }
 
 public void render(int x, int y){
     super.render(x,y);
    
     image(vampireImg, x,y,w,h);
   
   }
  
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "MonsterGallery" });
  }
}
