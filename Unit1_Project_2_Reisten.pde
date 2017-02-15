/*

Simple car racing game.
To move Green car press 'd'
To move Red car press ';'

*/


PImage RaceCar1;
PImage RaceCar2;
PImage Track;
int x = 200;
int z = 200;

void setup()
{
  size(1029,235);
  imageMode(CENTER);
  RaceCar1 = loadImage("Racecar1.png");
  RaceCar2 = loadImage("Racecar2.png");
  Track = loadImage("Track.jpg");
}
void draw()
{
  background(Track);
  image(RaceCar1,x,50);
  image(RaceCar2,z,185);
  
  if(x> width)
  {
    background(0,0,0);
    textSize(100);
    fill(0,255,31);
    text("Green Car Wins!",(width/2)/2,height/2);
  }
  if(z> width)
  {
    background(0,0,0);
    textSize(100);
    fill(255,0,0);
    text("Red Car Wins!",(width/2)/2,height/2);
  }
}
void keyPressed()
{
  if(key == 'd')
  {
    x=x+10;
  }
  if(key == ';')
  {
    z=z+10;
  }
}