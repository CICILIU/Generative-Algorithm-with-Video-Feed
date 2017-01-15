/*
 ITP Unconference Generative Algorithm Workshop by Liu Chang
 1.18.2017 @ITP Unconference, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 Workshop Repo: github.com/CICILIU/Generative-Algorithm-with-Video-Feed
 Website: www.liuchang.work/
 
 */

//first step:import video library

import processing.video.*;
Capture video;

//second step: variables
int x, y;
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
  background(255);
  //thrid step, make a location variables
  x = width/2;
  y = height/2;
  //fourth step: setup a webcam
  video = new Capture(this, width, height, 30);
  //video = new Capture(this, width,height, "Logitech Camera", 30);// third party webcam
  video.start();

  noFill();
  angnoise = random(10);
  radiusnoise = random(10);
  xnoise = random(10);
  ynoise = random(10);
}

void draw() {
  // 6th step
  if (video.available())
    video.read();
  video.loadPixels();

  PVector location = new PVector(random(0, width), random(0, height));
  color c = video.get(int(location.x), int(location.y));

  float centerX = width/2 + (noise(xnoise) * 100) - 50;
  float centerY = height/2 + (noise(ynoise) * 100) - 50;
  float rad = radians(angle);
  float x1 = centerX + (radius * cos(rad));
  float y1 = centerY + (radius * sin(rad));
  float opprad = rad + PI;
  float x2 = centerX + (radius * cos(opprad));
  float y2 = centerY + (radius * sin(opprad));



  radiusnoise += 0.005;
  radius = (noise(radiusnoise) * 550) +1;
  angnoise += 0.005;
  angle += (noise(angnoise) * 6) - 3;
  if (angle > 360) { 
    angle -= 360;
  }
  if (angle < 0) { 
    angle += 360;
  }
  xnoise += 0.01;
  ynoise += 0.01;


  stroke(c, 60);
  strokeWeight(2);
  line(x1, y1, x2, y2);
}