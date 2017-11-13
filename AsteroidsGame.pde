Spaceship enterprise = new Spaceship(500,500);
Stars[] space = new Stars[750];
public void setup() 
{
  size(1000,1000);
  for (int i=0;i<space.length;i++)
  {
    space[i] = new Stars();
  }
  enterprise.setDirectionX(500);
  enterprise.setDirectionY(500);
}
public void draw() 
{
  background(0);
  for (int i=0;i<space.length;i++) 
  {
    space[i].show();
  }
  enterprise.show();
  enterprise.move();
  enterprise.setDirectionX(0);
  enterprise.setDirectionY(0);
}

public void keyTyped()
{
  if(key == 'q')
  {
    enterprise.setX((int)(Math.random()*900));
    enterprise.setY((int)(Math.random()*600));
  }   
  else if(key == 'w')
  {
    enterprise.accelerate(10);
  }
  else if(key == 'a')
  {
    enterprise.turn(-20);
  }
  else if(key == 'd')
  {
    enterprise.turn(20);
  }
}
