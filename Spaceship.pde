class Spaceship extends Floater  
{   
    public Spaceship(int x, int y)
    {
      myColor = color(255,0,0);
      corners = 4; //gives interesting shape
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -10;
      yCorners[0] = -10;
      xCorners[1] = 10;
      yCorners[1] = 0;
      xCorners[2] = -10;
      yCorners[2] = 10;
    }
      
      public void setX(int x){myCenterX = x;}
      public int getX(){return (int)myCenterX;}
      public void setY(int y){myCenterY = y;}
      public int getY(){return (int)myCenterY;}
      public void setDirectionX(double x){myDirectionX = x;}
      public double getDirectionX(){return myDirectionX;}
      public void setDirectionY(double y){myDirectionY = y;}
      public double getDirectionY(){return myDirectionY;}
      public void setPointDirection(int degrees){myPointDirection = degrees;}
      public double getPointDirection(){return myPointDirection;}   
}
