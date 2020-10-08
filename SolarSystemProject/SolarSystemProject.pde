//code was written on a pc with a 1440p display hence I forgot it would not fit on a 1080p display vertically, apologies
PImage sun;
PImage stars;
float angle;
PImage neptune;
PImage uranus;
PImage saturn;
PImage jupiter;
PImage mars;
PImage earth;
PImage venus;
PImage mercury;
Planet[] planets;
import processing.sound.*;
SoundFile file;
void setup() {
  background(0);
  rect(-2, 1000, 1002, 2);
  file=new SoundFile(this, "Kosemura - The Eighth Day.mp3");
  planets=new Planet[8];
  planets[0]=new Planet(18);
  planets[1]=new Planet(25);
  planets[2]=new Planet(35);
  planets[3]=new Planet(45);
  planets[4]=new Planet(60);
  planets[5]=new Planet(70);
  planets[6]=new Planet(130);
  planets[7]=new Planet(160);

  planets[1].orbitSpeed=0.018;
  planets[1].image=loadImage("venus.png");
  planets[1].image.resize(19, 19);

  planets[2].orbitSpeed=0.0125;
  planets[2].image=loadImage("earth.png");
  planets[2].image.resize(20, 20);

  planets[3].orbitSpeed=0.0075;
  planets[3].image=loadImage("mars.png");
  planets[3].image.resize(13, 13);

  planets[4].orbitSpeed=0.002;
  planets[4].image=loadImage("jupiter.png");
  planets[4].image.resize(70, 70);

  planets[5].orbitSpeed=0.001;
  planets[5].image=loadImage("saturn.png");
  planets[5].image.resize(140, 70);

  planets[6].orbitSpeed=0.00075;
  planets[6].image=loadImage("uranus.png");
  planets[6].image.resize(45, 45);

  planets[7].orbitSpeed=0.0005;
  planets[7].image=loadImage("neptune.png");
  planets[7].image.resize(40, 40);

  size(1000, 1100);
  stars=loadImage("stars.PNG");
  sun= loadImage("sun.png");
  stars.resize(1000, 1000);
  sun.resize(100, 100);
  neptune=loadImage("neptune.png");
  neptune.resize(75, 75);
  uranus=loadImage("uranus.png");
  uranus.resize(75, 75);
  saturn=loadImage("saturn.png");
  saturn.resize(150, 75);
  jupiter=loadImage("jupiter.png");
  jupiter.resize(75, 75);
  mars=loadImage("mars.png");
  mars.resize(75, 75);
  earth=loadImage("earth.png");
  earth.resize(75, 75);
  venus=loadImage("venus.png");
  venus.resize(75, 75);
  mercury=loadImage("https://i.pinimg.com/originals/5e/67/68/5e6768938ffe6ac06c4cb93f054398c1.jpg");
  mercury.resize(80, 80);
  file.play(1.1);
  println("Welcome to our Solar System! Click on the planets at the bottom to find out more!");
}

void draw() {
  angle=angle+1;
  image(stars, 0, 0);
  image(sun, 435, 425);
  for (int i=0; i<8; i++) {
    planets[i].display();
    planets[i].orbit();
  }
  image(neptune, 12, 1010);
  image(uranus, 122, 1010);
  image(saturn, 227, 1010);
  image(jupiter, 407, 1010);
  image(mars, 522, 1010);
  image(earth, 632, 1010);
  image(venus, 742, 1010);
  image(mercury, 852, 1008);

  if (dist(mouseX, mouseY, 48, 1050)<38 || dist(mouseX, mouseY, 158, 1050)<38 || dist(mouseX, mouseY, 300, 1050)<50 || dist(mouseX, mouseY, 444, 1050)<38 || dist(mouseX, mouseY, 558, 1050)<38 || dist(mouseX, mouseY, 668, 1050)<38 || dist(mouseX, mouseY, 778, 1050)<38 || dist(mouseX, mouseY, 891, 1050)<38) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}

void mouseClicked() {

  if (dist(mouseX, mouseY, 48, 1050)<38) {
    println("Neptune! Length of Year: 60190 Earth days, Length of Day: 16 Hours 6 Minutes, Discovered: September 23rd 1846.");
  } else if (dist(mouseX, mouseY, 158, 1050)<38) {
    println("Uranus! Length of Year: 30687 Earth days, Length of Day: 17 Hours 14 Minutes, Discovered: March 13th 1781.");
  } else if (dist(mouseX, mouseY, 300, 1050)<50) {
    println("Saturn! Length of Year: 10756 Earth days, Length of Day: 10 Hours 42 Minutes, Discovered: 8th Century BC.");
  } else if (dist(mouseX, mouseY, 444, 1050)<38) {
    println("Jupiter! Length of Year: 4333 Earth days, Length of Day: 9 Hours 56 Minutes, Discovered: 7/8th Century BC.");
  } else if (dist(mouseX, mouseY, 558, 1050)<38) {
    println("Mars! Length of Year: 687 Earth days, Length of Day: 24 Hours 37 Minutes, Discovered: 2nd Millennium BC.");
  } else if (dist(mouseX, mouseY, 668, 1050)<38) {
    println("Earth! You should know these details..");
  } else if (dist(mouseX, mouseY, 778, 1050)<38) {
    println("Venus! Length of Year: 225 Earth days, Length of Day: 117 Earth Days, Discovered: 17th Century BC.");
  } else if (dist(mouseX, mouseY, 891, 1050)<38) {
    println("Mercury! Length of Year: 88 Earth days, Length of Day: 59 Earth Days, Discovered: 14th Century BC.");
  }
}
