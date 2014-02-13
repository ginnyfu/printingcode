import processing.pdf.*;

float print_width = 22;
float print_height = 15;
float bigger = 35;
int radius = 300;
float offsetHead;
float offsetTail;
float angle = 60;
float angleDrop;

void setup() {
  size(round(print_width * bigger), round(print_height * bigger));
  background(255);
}

void draw() {
  beginRecord(PDF, "wetAndSharp.pdf");
  noLoop();
  angle = random(0.3, 0.5);
  
  //creating the drop
  offsetHead=sin(angle+PI)*3;
  offsetTail=sin(angle+PI/2)*5;
  translate(width*7/12, height*5/16+20);
  for (float i = 1; i > 0.65; i = i - 0.07) {
    for (int j = 0; j < 200; j = j + 70) {
      angleDrop=atan2(2, 0.5);
      rotate((angleDrop)+HALF_PI);
      noStroke();
      fill(0);
      beginShape();
      vertex((offsetTail), -10-j);
      bezierVertex((-30+offsetHead), -80-j, (30+offsetHead), -80-j, (offsetTail), -10-j);
      endShape();
    }
  }
  
  //creating the knife
  translate(-width/100, height/10);
  angleDrop=atan2(-2, -3);
  rotate((angleDrop)+HALF_PI);
  scale(2.4);
  beginShape();
  vertex(30, 20);
  bezierVertex(50, 40, 60, 115, 30, 115);
  //bezierVertex(50, 40, 75, 115, 30, 0);
  bezierVertex(40, 115, 75, 115, 30, 0);
  fill(0);
  //vertex(30, 20);
  for (int px = 30; px < 39; px = px+8) {
    for (int py = 155; py > 115; py = py-40) {
      vertex(px, py);
    }
  }
  endShape();
  endRecord();
}

