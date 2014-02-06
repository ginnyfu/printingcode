import processing.pdf.*;
int r1;
int r2;
int a, b;

void setup() {
  size(400, 600);
  background(255);
  stroke(0);
  //The circles, including the two scoops and the cherry.
  beginRecord(PDF, "ice cream cone.pdf");
  for (int x=0; x<width; x++) {
    for (int y=0; y<height; y++) {
      if (x==200&&y==140 || x==200&&y==230 || x==230&&y==83) {
        if (x==230&&y==83) {
          fill(0);
          r1 = 25;
          r2 = r1;
        }
        else {
          fill(255);
          if (x==200&&y==140) {
            r1 = 120;
            r2 = 100;
          }
          else {
            r1 = 200;
            r2 = 200;
          }
        }
        ellipse(x, y, r1, r2);
      }
    }
  }

  for (int x=0; x<width; x++) {
    for (int y=0; y<height; y++) {
      if (x==97&&y==280) {
        for (int sd = 133; sd <= 343; sd=sd+55) {
          for (int td = 174; td <= 237; td=td+18) {
            for (int h = 319; h <= 530; h=h+37) {
              noFill();
              triangle(x, y, sd, y, td, h);
            }
          }
        }
      }
    }
  }

  for (int x=0; x<width; x++) {
    for (int y=height; y>-height; y--) {
      if (x==85&&y==230 || x==88&&y==-30) {
        if (x==85&&y==230) {
          fill(0);
          a = 230;
          b = 50;
        }
        else {
          a = 1;
          b = 30;    
          translate(195, 0);
          rotate(PI/3.0);
        } 
        rect(x, y, a, b);
      }
    }
  }
  endRecord();
}

