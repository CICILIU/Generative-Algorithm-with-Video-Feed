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

  for (int x= 0; x<width; x++) {

    noStroke();
    fill(231, 151, 151);
    ellipse(x, random(height), 5, 5);
  }
  noLoop();
}