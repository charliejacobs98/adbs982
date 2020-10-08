class Planet {

  PImage image;
  float distance;
  float angle;
  float orbitSpeed;


  Planet(float d)
  {
    distance = d;
    angle = random(0,6);
    orbitSpeed=0.04;
    image=loadImage("https://i.pinimg.com/originals/5e/67/68/5e6768938ffe6ac06c4cb93f054398c1.jpg");
    image.resize(8, 8);
  }

  void orbit() {
    angle = angle + orbitSpeed;
  }

  void display() {
    pushMatrix();
    translate(485, 475);
    rotate(angle);
    image(image, distance*2, distance*2);
    popMatrix();
  }
}
