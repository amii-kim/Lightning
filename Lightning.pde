int startX = 150;
int startY =0;
int endX = 150;
int endY = 0;

void setup()
{
  size(500,500);
  strokeWeight(3);
  background(0,0,0);
  frameRate(80);
}
void draw()
{
  //opacity
  fill(0,0,0,15);
  noStroke();
  rect(0,0,width,height);
    //lightning color
    stroke(217, 207, 250);
 //lightning strike
  if (endY<height)
  {
    endY=startY + (int)(Math.random()*10);
    endX= startX + (int)(Math.random()*18)-9;
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
    line(startX,startY,endX,endY);
  }
   cloud(150,148);
}
void mousePressed()
{
cloud(84,80);
startX=(int)(Math.random()*150)+150;
startY=20;
endX= startX;
endY=startY;
}

void cloud(int x, int y)
{
  fill(x, y, 150);
  noStroke();
  ellipse(60,60,150,100);
  ellipse(200,40,200,100);
  ellipse(300,60,150,100);
  ellipse(400,40,200,100);
   ellipse(450,60,150,80);  
}
