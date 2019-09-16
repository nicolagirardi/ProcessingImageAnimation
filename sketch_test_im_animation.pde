PImage im;
float angle_m = 90, angle, deltaAngle = angle_m / 60;
int frame = 0;
boolean startAnimation = false;

void setup(){
  PImage im_o = loadImage("001.jpg");
  image(im_o, 0, 0);
}

void draw(){
  if (startAnimation){
    animate();
  }
}

void keyPressed(){
  im = get(100, 100, 200, 200);
  startAnimation = true;
}

void animate(){
  if (frame < 60) {
    pushMatrix();
    translate(100, 100);
    rotate(radians(deltaAngle));
    image(im, 0, 0);
    frame++;
    popMatrix();
  } else {
    startAnimation = false;
  }
} 
