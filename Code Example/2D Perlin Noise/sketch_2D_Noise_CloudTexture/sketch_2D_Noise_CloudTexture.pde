/*
 ITP Unconference Generative Algorithm Workshop by Liu Chang
 1.18.2017 @ITP Unconference, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 Workshop Repo: github.com/CICILIU/Generative-Algorithm-with-Video-Feed
 Website: www.liuchang.work/
 
 */
float inc = 0.005;//play the value
void setup() {
  size(500, 500);
}

void draw() {
  loadPixels();
  float detail = map(mouseX, 0, width, 0.005, 0.8);

  noiseDetail(9, detail);
  float xoff =0.0;

  for (int x =0; x< width; x++) {
    xoff +=inc;
    float yoff = 0;

    for (int y =0; y<height; y++) {
      yoff +=inc;

      float Glitch = noise(xoff, yoff)*255;
      //float Glitch = random(0,255);

      // Set each pixel onscreen to a grayscale value
      pixels[x+y*width] = color(Glitch);
    }
  }
  updatePixels();
  
  fill(255);
  text("Using mouse to play with noise detail",10,480);
}