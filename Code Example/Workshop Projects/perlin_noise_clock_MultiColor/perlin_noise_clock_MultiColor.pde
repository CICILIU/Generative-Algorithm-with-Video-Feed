/*
 ITP Unconference Generative Algorithm Workshop by Liu Chang
 1.18.2017 @ITP Unconference, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 Workshop Repo: github.com/CICILIU/Generative-Algorithm-with-Video-Feed
 Website: www.liuchang.work/
 
 */
float angnoise, radiusnoise;
float xnoise, ynoise;
float angle = -PI/2;
float radius;

float strokeCol = 254;
int strokeChange = -1;

void setup() {
  size(800, 800);
  smooth();
  frameRate(30);
  background(197, 231, 197);
  //noFill();
  angnoise = 10;
  radiusnoise = 10;
  xnoise = 10;
  ynoise = random(10);
}

void draw() {
  radiusnoise += 0.005;
  radius = noise(radiusnoise) *500;
  angnoise += 0.005;
  angle += noise(angnoise) ;
  if (angle > 360) { 
    angle -= 360;
  }
  if (angle < 0) { 
    angle += 360;
  }
  xnoise += 0.01;
  ynoise += 0.01;
  float centerX = width/2  ;
  float centerY = height/2  ;//change the center point
  float rad = radians(angle);
  float opprad = rad + PI;
  float x1 = centerX + (radius * cos(rad));
  float y1 = centerY + (radius * sin(rad));

  float x2 = centerX + (radius * cos(opprad));
  float y2 = centerY + (radius * sin(opprad));
  strokeCol += strokeChange;
  if (strokeCol > 254) { 
    strokeChange = -1;
  }
  if (strokeCol < 0) { 
    strokeChange = 1;
  }
  stroke(strokeCol, 125);
  strokeWeight(2);
  line(x1, y1, x2, y2);
}