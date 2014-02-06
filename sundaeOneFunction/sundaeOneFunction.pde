int r1;
int r2;
int a,b,c,d,e,f,g;

void setup(){
size(400, 600);
background(255);
stroke(0);
//The circles, including the two scoops and the cherry.

for(int x=0; x<width; x++){
 for(int y=0; y<height; y++){
 if(x==200&&y==140 || x==200&&y==230 || x==230&&y==83){
   if(x==230&&y==83){
   fill(0);
   r1 = 25;
   r2 = r1;
   }
   else{
     fill(255);
     if(x==200&&y==140){
   r1 = 120;
   r2 = 100;
   }
   else{
   r1 = 200;
   r2 = 200;
   }
   }
   ellipse(x, y, r1, r2);
 }
 }
}

for(int x=0; x<width; x++){
 for(int y=0; y<height; y++){
 if(x==97&&y==280){
   for(int sd = 133; sd <= 343; sd=sd+55){
     for(int td = 174; td <= 237; td=td+18){
       for(int h = 319; h <= 440; h=h+37){
   noFill();
   triangle(x, y, sd, y, td, h);
   }
 }
}
 }
 }
}

for(int x=0; x<width; x++){
 for(int y=height; y>-height; y--){
  if(x==85&&y==230 || x==167&&y==470 || x==200&&y==470 || x==88&&y==-30){
    if(x==85&&y==230){
      fill(0);
    a = 230;
    b = 50;
    }
    else{
    if(x==167&&y==470){
      fill(255);
    a = 33;
    b = 70;
    }
    else{
    if(x==200&&y==470){
      fill(0);
    a = 34;
    b = 70;
    }
    else{
      a = 1;
      b = 30;    
translate(195, 0);
rotate(PI/3.0);
    } 
    }
    }
    rect(x, y, a, b);
 }
 }
}


fill(0);
//rect(85, 230, 230, 50);
//fill(255);
//triangle(97, 280, 303, 280, 200, 480);
fill(0);
triangle(200, 380, 140, 540, 260, 540);
fill(255);
triangle(149, 380, 200, 380, 178, 440);
triangle(251,380, 200, 380, 223, 440);
triangle(223, 440, 178, 440, 200, 380);
triangle(167, 470, 140, 540, 200, 540);
//triangle(167, 470, 200, 470, 180, 540);
//noFill();
//rect(167, 470, 33, 70);
noFill();
triangle(167, 470, 140, 540, 200, 540);
fill(255);
triangle(200, 540, 260, 540, 234, 470);
//noFill();
//rect(200, 470, 34, 70);
noFill();
triangle(200, 540, 260, 540, 234, 470);
//triangle(200, 470, 180, 540, 218, 540);

//translate(195, 0);
//rotate(PI/3.0);
//rect(88, -30, 1, 30);
}
