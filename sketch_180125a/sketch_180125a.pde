PVector Position = new PVector(200,900);
PVector Position2 = new PVector(200,200);
PVector Position3 = new PVector(900,200);
PVector Position4 = new PVector(800,200);
PVector rat = new PVector(0,0);
PVector dir = new PVector(0,0);
PVector dir2 = new PVector(0,0);
PVector dir3 = new PVector(0,0);
PVector dir4 = new PVector(0,0);
float speed = 3;

void setup()
{
  fullScreen();
  noStroke();
}

void draw()
{
  fill(random(250), random(250), random(250));
  ellipse(Position.x,Position.y, 50, 50);
  ellipse(Position2.x,Position2.y, 50, 50);
  ellipse(Position3.x,Position3.y, 50, 50);
  ellipse(Position4.x,Position4.y, 50, 50);
  rat = new PVector(mouseX,mouseY);
  dir = PVector.sub(rat,Position);
  dir2 = PVector.sub(rat,Position2);
  dir3 = PVector.sub(rat,Position3);
  dir4 = PVector.sub(rat,Position4);
  speed = dir.mag();
  dir.normalize();
  dir2.normalize();
  dir3.normalize();
  dir4.normalize();
  dir.mult(speed/100);
  dir2.mult(speed/100);
  dir3.mult(speed/100);
  dir4.mult(speed/100);
  Position.add(dir);
  Position2.add(dir2);
  Position3.add(dir3);
  Position4.add(dir4);
}