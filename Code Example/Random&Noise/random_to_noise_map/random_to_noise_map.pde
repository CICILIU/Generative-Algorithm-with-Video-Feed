/*
 ITP Unconference Generative Algorithm Workshop by Liu Chang
 1.18.2017 @ITP Unconference, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 Workshop Repo: github.com/CICILIU/Generative-Algorithm-with-Video-Feed
 Website: www.liuchang.work/
 
 */
void setup() {
  size(500, 500);
}

void draw() {
  background(197, 231, 197);
  //refresh, get different location, becasue height is not a dynamic variable
  float y = map(noise(height),1,0,0,height);
  noStroke();
  fill(255,23,151);
  ellipse(width/2, y, 30, 30);
}