/*
 ITP Unconference Generative Algorithm Workshop by Liu Chang
 1.18.2017 @ITP Unconference, New York
 
 Below is a code example for the exercise section. 
 Modified by Daniel Shiffman's Nature of Code's example
 Only for education purpose.
 
 Workshop Repo: github.com/CICILIU/Generative-Algorithm-with-Video-Feed
 Website: www.liuchang.work/
 
 */

boolean debug = true;

// Flowfield object
FlowField flowfield;
// An ArrayList of vehicles
ArrayList<Vehicle> vehicles;

import processing.video.*;
Capture video;

void setup() {

  size(1280, 720);
  background(255);
  video = new Capture(this, width, height, 30);
  video.start();
  // Make a new flow field with "resolution" of 16
  flowfield = new FlowField(20);
  vehicles = new ArrayList<Vehicle>();

  // Make a whole bunch of vehicles with random maxspeed and maxforce values
  for (int i = 0; i < 120; i++) {
    vehicles.add(new Vehicle(new PVector(random(width), random(height)), random(2, 5), random(0.1, 0.5)));
  }
}

void draw() {
  if (video.available())
    video.read();
  video.loadPixels();

  //background(255);
  flowfield.update();

  // Display the flowfield in "debug" mode
  if (debug) flowfield.display();
  // Tell all the vehicles to follow the flow field
  for (Vehicle v : vehicles) {
    v.follow(flowfield);
    v.run();
  }
}