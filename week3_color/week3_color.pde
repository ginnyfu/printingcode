import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

int vertical = 16;
int horizontal = 16;
int makeBigger = 40;


TColor color1 = TColor.newHSV(random(0, 1), random(0.3, 0.4), 1);
TColor color2 = TColor.newHSV(color1.hue() + (120f/360f), color1.saturation(), 1);
TColor color3 = TColor.newHSV(color1.hue() - (120f/360f), color1.saturation(), 1);
TColor color4 = TColor.newHSV(random(color1.hue() + (90f/360f), color1.hue() - (90f/360f)), color1.saturation(), 1);
void setup() {

  size(round(vertical*makeBigger), round(horizontal*makeBigger));
  colorMode(HSB, 1, 1, 1);

  background(color1.hue(), color1.saturation(), color1.brightness());

  profile();
}

void draw() {

  /*
  //right side eye brow
  noFill ();
  stroke(color2.hue(), color2.saturation(), color2.brightness());
  strokeWeight(10);

  bezier (400, 110, 445, 70, 465, 75, 500, 85);

  //right side eye
  bezier (420, 140, 445, 165, 480, 145, 490, 130);
*/
/*
   //left side eye brow
   noFill ();
  stroke(color2.hue(), color2.saturation(), color2.brightness());
   bezier (200, 110, 155, 70, 135, 75, 100, 85);
   
   //left side eye
   bezier (180, 140, 155, 165, 120, 145, 110, 130);

   //left side eyelash
   fill (color2.hue(), color2.saturation(), color2.brightness());
   noStroke();
   triangle (130, 155, 115, 160, 115, 146);
   triangle (115, 146, 95, 148, 102, 134);
   */
  
  //mouth
   fill (color2.hue(), color2.saturation(), color2.brightness());
   noStroke();
  // bezier (298, 525, 375, 550, 415, 530, 470, 505);
 // bezier (268, 525, 375, 570, 430, 550, 480, 515);
  bezier (268, 505, 370, 570, 430, 550, 480, 505);
  // arc (345, 513, 80, 30, 2.9, 5.98);

  // bezier (380, 508, 375, 490, 425, 475, 460, 500);

}

void profile() {
  //TColor color1 = TColor.newHSV(random(0,1), random(0.4,0.6), 1);

  // find the rectangle of complementary colors by going 90 degrees around the color wheel  

  //noStroke();
  strokeWeight(8);
  stroke(color4.hue(), color4.saturation(), color4.brightness(), 100);
  //fill(shape1color.hue(), shape1color.saturation(), shape1color.brightness());
  fill(color3.hue(), color3.saturation(), color3.brightness());

  //draw the shape
  beginShape();
  vertex(width/2, 0);
  bezierVertex(150, 370, 150, 380, 380, 380);
  bezierVertex(380, 380, 360, 550, width*2/3, height);
  vertex(0, height);
  vertex(0, 0);
  endShape();
  
  strokeWeight(10);
  stroke(color3.hue(), color3.saturation(), color3.brightness());
  line(0, 0, 0, height);
  line(0, height, width*2/3-10, height);

}

