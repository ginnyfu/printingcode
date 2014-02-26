import processing.pdf.*;

Cell[][] dots;
Cell[][] dots2;
Cell[][] dots3;
Cell[][] dots4;
Cell[][] dots5;

// Number of columns and rows in the grid
int cols = 3;
int rows = 4;

void setup() {
  size(650,650);
  background(255);
  
  //for the letters
  dots = new Cell[cols][rows];
  dots2 = new Cell[cols][rows];
  dots3 = new Cell[cols][rows];
  dots4 = new Cell[cols][rows];
  dots5 = new Cell[cols][rows];
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      dots[i][j] = new Cell(i*30+50,j*30+235,5,5);
      dots2[i][j] = new Cell(i*30+170,j*30+235,5,5);
      dots3[i][j] = new Cell(i*30+290,j*30+235,5,5);
      dots4[i][j] = new Cell(i*30+410,j*30+235,5,5);
      dots5[i][j] = new Cell(i*30+530,j*30+235,5,5);
    }
  }
  //line(50, 225, 50, 315);
  //line(dots[0][0].getXvalue(0), dots[0][0].getYvalue(0), dots[0][3].getXvalue(0), dots[0][3].getYvalue(3));
  
  beginRecord(PDF, "font.pdf");
  
  strokeWeight(2);
  //first letter "h"
  beginShape();
  fill(30);
  vertex(dots[0][0].getXvalue(0), dots[0][0].getYvalue(0));
  vertex(dots[0][3].getXvalue(0), dots[0][3].getYvalue(3));
  vertex(dots[1][2].getXvalue(1), dots[1][2].getYvalue(2));
  vertex(dots[2][3].getXvalue(2), dots[2][3].getYvalue(3));
  vertex(dots[2][1].getXvalue(2), dots[2][1].getYvalue(1));
  //vertex(dots[2][0].getXvalue(2), dots[2][0].getYvalue(0));
  vertex(dots[1][1].getXvalue(1), dots[1][1].getYvalue(1));
  vertex(dots[0][0].getXvalue(0), dots[0][0].getYvalue(0));
  endShape();
  
  //second letter "e"
  beginShape();
  vertex(dots2[0][1].getXvalue2(0), dots2[0][1].getYvalue(1));
  vertex(dots2[0][2].getXvalue2(0), dots2[0][2].getYvalue(2));
  vertex(dots2[1][3].getXvalue2(1), dots2[1][3].getYvalue(3));
  vertex(dots2[2][3].getXvalue2(2), dots2[2][3].getYvalue(3));
  vertex(dots2[1][2].getXvalue2(1), dots2[1][2].getYvalue(2));
  vertex(dots2[2][2].getXvalue2(2), dots2[2][2].getYvalue(2));
  vertex(dots2[2][1].getXvalue2(2), dots2[2][1].getYvalue(1));
  vertex(dots2[0][1].getXvalue2(0), dots2[0][1].getYvalue(1));
  endShape();
  
  //third letter "l"
  beginShape();
  vertex(dots[0][0].getXvalue3(0), dots[0][0].getYvalue(0));
  vertex(dots[0][3].getXvalue3(0), dots[0][3].getYvalue(3));
  vertex(dots[1][3].getXvalue3(1), dots[1][3].getYvalue(3));
  vertex(dots[2][3].getXvalue3(2), dots[2][3].getYvalue(3));
  vertex(dots[1][2].getXvalue3(1), dots[1][2].getYvalue(2));
  vertex(dots[0][0].getXvalue3(0), dots[0][0].getYvalue(0));
  endShape();
  
  //forth letter "l"
  beginShape();
  vertex(dots[0][0].getXvalue4(0), dots[0][0].getYvalue(0));
  vertex(dots[0][3].getXvalue4(0), dots[0][3].getYvalue(3));
  vertex(dots[1][3].getXvalue4(1), dots[1][3].getYvalue(3));
  vertex(dots[2][3].getXvalue4(2), dots[2][3].getYvalue(3));
  vertex(dots[1][2].getXvalue4(1), dots[1][2].getYvalue(2));
  vertex(dots[0][0].getXvalue4(0), dots[0][0].getYvalue(0));
  endShape();
  
  //fifth letter "o"
  beginShape();
  vertex(dots[1][1].getXvalue5(1), dots[1][1].getYvalue(1));
  vertex(dots[0][2].getXvalue5(0), dots[0][2].getYvalue(2));
  vertex(dots[1][3].getXvalue5(1), dots[1][3].getYvalue(3));
  vertex(dots[2][2].getXvalue5(2), dots[2][2].getYvalue(2));
  vertex(dots[1][1].getXvalue5(1), dots[1][1].getYvalue(1));
  endShape();
  
  // The counter variables i and j are also the column and row numbers and 
  // are used as arguments to the constructor for each object in the grid.  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Oscillate and display each object
    //  grid[i][j].oscillate();
      dots[i][j].display();
      dots2[i][j].display();
      dots3[i][j].display();
      dots4[i][j].display();
      dots5[i][j].display();
      
    }
  }
 endRecord(); 
}

void draw() {

}

// A Cell object
class Cell {
  // A cell object knows about its location in the grid as well as its size with the variables x,y,w,h.
  int x,y;   // x,y location
  int w,h;   // width and height

  // Cell Constructor
  Cell(int tempX, int tempY, int tempW, int tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
  } 

  void display() {
    noStroke();
    // Color calculated using sine wave
    fill(0);
    ellipse(x,y,w,h); 
  }
  
  int getXvalue(int i){
  return i*30+50;
  }
  
  int getYvalue(int j){
  return j*30+235;
  }
  
  int getXvalue2(int i){
  return i*30+170;
  }
  
  int getXvalue3(int i){
  return i*30+290;
  }
  
  int getXvalue4(int i){
  return i*30+410;
  }
  
  int getXvalue5(int i){
  return i*30+530;
  }
}
