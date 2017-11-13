class asteroids extends Floater
{
  public int mySpeed;
  public asteroids(int x, int y)
    {
      mySpeed = (int)(Math.random()*10);
      myColor = color(150);
      corners = 8;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0]=0;
      yCorners[0]=20;
      xCorners[1]=15;
      yCorners[1]=15;
      xCorners[2]=20;
      yCorners[2]=0;
      xCorners[3]=15;
      yCorners[3]=-15;
      xCorners[4]=0;
      yCorners[4]=-20;
      xCorners[5]=-15;
      yCorners[5]=-15;
      xCorners[6]=-20;
      yCorners[6]=0;
      xCorners[7]=-15;
      yCorners[7]=15; 
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
   
  public void move()
  {
    myCenterX+=myDirectionX;    
    myCenterY+=myDirectionY;     
    myPointDirection+=mySpeed;   
    if(mySpeed==0)
    {
      mySpeed=(int)(Math.random()*5);
    }
    if(myDirectionX==0)
    {
      myDirectionX=(int)(Math.random()*5);
    }

    if(myDirectionY==0)
    {
      myDirectionY=(int)(Math.random()*5);
    }    
    if(myCenterX>width)
    {     
      myCenterX=0;    
    }    
    else if(myCenterX<0)
    {     
      myCenterX=width;    
    }    
    if(myCenterY>height)
    {    
      myCenterY=0;    
    }
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
   }
}
