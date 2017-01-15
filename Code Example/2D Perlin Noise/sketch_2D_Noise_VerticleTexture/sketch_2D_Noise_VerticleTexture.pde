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
  loadPixels();
  float xoff =0;
  for (int x =0; x< width; x++) {
    for (int y = 0; y< height; y++) {

      xoff +=0.01;
      float Glitch = noise(xoff)*255;

      // Set each pixel onscreen to a grayscale value
      pixels[x+y*width] = color(Glitch);
    }
  }
  updatePixels();
}