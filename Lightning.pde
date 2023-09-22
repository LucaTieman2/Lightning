int startX = (int)random(50, 450);
int startY = (int)random(0, 50);
int endX = 0;
int endY = 0;

void setup()
{
  background(255, 83, 70);
  stroke(random(100, 255), 255, 0);
  size(500,500);
  
  
}
void draw()
{
  strokeWeight((int)random(4, 5));
  endX = startX + (int)random(-10, 9);
  endY = startY + (int)random(9, -9);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  System.out.println(endX);
  if(endX > 500) {
    mousePressed();
  }
}
void mousePressed()
{
  if(endY > 75) {
  background(255, 83, 70);
  strokeWeight(1);
  startX = (int)random(50, 450);
  startY = (int)random(0, 50);
  endX = 0;
  endY = 0;
  }
}
