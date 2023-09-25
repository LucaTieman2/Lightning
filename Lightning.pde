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
  for (int i = 50; i < 200; i += 30) { 
    ellipse(i, 50, 50, 50);
    ellipse(i, 90, 50, 50);
    ellipse(200, 80, 50, 50);
    ellipse(30, 80, 50, 50);
  }
  for (int x = 300; x < 400; x += 30) { 
    ellipse(x, 50, 50, 50);   
    ellipse(x, 80, 50, 50);   
    ellipse(270, 60, 50, 50);
    ellipse(440, 60, 50, 50);
  }
  if(endX > 500) {
    mousePressed();
  }
}
void mousePressed()
{
  background(255, 83, 70);
  strokeWeight(1);
  startX = (int)random(50, 450);
  startY = (int)random(70, 100);
  endX = 0;
  endY = 0;
}
