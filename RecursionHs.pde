
void setup() {
  
  size(800, 800);
  background(0);
  preHTree();
  
  int x = 400;
  int y = 400;
  int l = 200;  
  int n = 8;
  hTree(n, x, y, l); //Floats don't work here has to be ints
  
}//end setup

void preHTree() {

  strokeWeight(1);
  stroke(255);

  float l = width/4;
  float x = width/2;
  float y = height/2;

  //Big H
  line(x+l, y, x-l, y);
  line(x-l, y-l, x-l, y+l);
  line(x+l, y-l, x+l, y+l);

  //Top left small H
  float l1 = l/2;
  float x1 = x-l;
  float y1 = y-l;

  line(x1+l1, y1, x1-l1, y1);
  line(x1-l1, y1-l1, x1-l1, y1+l1);
  line(x1+l1, y1-l1, x1+l1, y1+l1);
  //line(100, 200, 300, 200);
  //line(100, 100, 100, 300); 
  //line(300, 100, 300, 300);

  //Top right small H
  float l2 = l/2;
  float x2 = x+l;
  float y2 = y-l;

  line(x2+l2, y2, x2-l2, y2);
  line(x2-l2, y2-l2, x2-l2, y2+l2);
  line(x2+l2, y2-l2, x2+l2, y2+l2);
  //line(500, 200, 700, 200);
  //line(500, 100, 500, 300); 
  //line(700, 100, 700, 300);

  //Bottom left small H
  float l3 = l/2;
  float x3 = x-l;
  float y3 = y+l;

  line(x3+l3, y3, x3-l3, y3);
  line(x3-l3, y3-l3, x3-l3, y3+l3);
  line(x3+l3, y3-l3, x3+l3, y3+l3);
  //line(100, 600, 300, 600);
  //line(100, 500, 100, 700); 
  //line(300, 500, 300, 700);

  //Bottom right small H
  float l4 = l/2;
  float x4 = x+l;
  float y4 = y+l;

  line(x4+l4, y4, x4-l4, y4);
  line(x4-l4, y4-l4, x4-l4, y4+l4);
  line(x4+l4, y4-l4, x4+l4, y4+l4);
  //line(500, 600, 700, 600);
  //line(500, 500, 500, 700); 
  //line(700, 500, 700, 700);
}//end preHTree

void drawH(int x, int y, int l) {

  line(x+l, y, x-l, y);
  line(x-l, y-l, x-l, y+l);
  line(x+l, y-l, x+l, y+l);
  
}//end drawH

void hTree(int n, int x, int y, int l) {

  // base case
  if (n == 0) {
    return;
  }

  // recursive case
  drawH(x, y, l);
  hTree(n-1, x-l, y-l, l/2);  //top left smaller H
  hTree(n-1, x+l, y-l, l/2);  //top right smaller H
  hTree(n-1, x-l, y+l, l/2);  //bottom left smaller H
  hTree(n-1, x+l, y+l, l/2);  //bottom right smaller H
  
}// end hTree
