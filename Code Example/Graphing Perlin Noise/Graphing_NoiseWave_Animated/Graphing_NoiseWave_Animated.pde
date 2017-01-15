/*
 ITP Unconference Generative Algorithm Workshop by Liu Chang
 1.18.2017 @ITP Unconference, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 Workshop Repo: github.com/CICILIU/Generative-Algorithm-with-Video-Feed
 Website: www.liuchang.work/
 
 */
float y;
float xoffset;
float  inc = 0.01;//increase
float start = 0;

void setup() {
  size(500, 500);
  //noiseDetail(20);
}

void draw() {
  background(197, 231, 197);
  stroke(16, 151, 234);
  noFill();
  beginShape();
  xoffset = start;


  for (int x= 0; x<width; x++) {

    xoffset = xoffset +inc;
    y = map(noise(xoffset), 0, 1, 0, height);

    stroke(231, 151, 151);
    vertex(x, y);
  }
  endShape();
  start += inc;
  //noLoop();
}