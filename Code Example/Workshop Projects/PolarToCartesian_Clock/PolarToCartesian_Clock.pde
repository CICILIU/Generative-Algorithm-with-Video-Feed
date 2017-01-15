/*
 ITP Unconference Generative Algorithm Workshop by Liu Chang
 1.18.2017 @ITP Unconference, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 Workshop Repo: github.com/CICILIU/Generative-Algorithm-with-Video-Feed
 Website: www.liuchang.work/
 
 * Formula
 * Convert a polar coordinate (r,theta) to cartesian (x,y):  
 * x = r * cos(theta)
 * y = r * sin(theta)
 */

float radius;
float angle;


void setup() {
  size(800, 800);
  background(255);
  radius = height * 0.45;
  angle = -180;
}

void draw() {

  // Translate the origin point to the center of the screen
  translate(width/2, height/2);
  angle += 0.02;//could change the value to same with millsecond

  // Convert polar to cartesian
  float x = radius * cos(angle);
  float y = radius * sin(angle);

  stroke(155, 255, 175);
  strokeWeight(1);
  line(0, 0, x, y);
}