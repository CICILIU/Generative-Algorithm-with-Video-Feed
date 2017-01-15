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
  //change random() direct to noise, turn out the static position;
  //because noise() only return a float between 0 ~ 1;
  float y = noise(height);
  noStroke();
  fill(255, 23, 151);
  ellipse(width/2, y, 30, 30);
}