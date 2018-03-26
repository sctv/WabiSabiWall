//import ddf.minim.*;
//import ddf.minim.analysis.*;
// globals
float scale; // this is just a variable we can alter on the fly
//Minim minim;
//AudioInput in;
int pixelSize = 15;
PGraphics pg;
int width = 640;
int height = 480;
PFont f;
  char[] dictionary;
  //dictionary["wabi sabi"]
  
  
void setup() {
  //background(0);
  fullScreen();
  noCursor();
  noSmooth();
  pg = createGraphics(30, 19);
  printArray(PFont.list());
  f = createFont("ClearSans",9);
  textFont(f);
  background(102);
  textAlign(CENTER);
  //drawType(pg,pg.width * 0.5);
  //minim = new Minim(this);
  //minim.debugOn();
  //in = minim.getLineIn(Minim.STEREO, 512);
}

void draw() {
  //scale = in.left.get(1) * 100;
  pg.beginDraw();
    pg.noStroke();
    pg.fill(0);
    pg.rect(0, 0, pg.width, pg.height);
    pg.fill(#ffffff);
    pg.textAlign(CENTER);
    pg.fill(255);
    pg.text("wabi", 15, 9);
    pg.text("sabi", 15, 18);
    //drawType(pg,pg.width * 0.5);
    //pg.ellipse(pg.width / 2, pg.height / 2, scale, scale);
    pg.loadPixels();
  pg.endDraw();
  for (int y = 0; y < pg.height; y++) {
    for (int x = 0; x < pg.width; x++) {
      int loc = x + y*pg.width;
      color clr = pg.pixels[loc];
      fill(clr);
      rect((2*x +1)*pixelSize, (2*y +1)*pixelSize, pixelSize, pixelSize);
    }
  }
  //image(pg, 0 , 0);
  delay(50);
}
//void drawType(PGraphics pg,float x) {
  //println(x);
  //line(x, 0, x, 65);
  //line(x, 220, x, height);
  //pg.fill(0);
  //pg.text("sabi", x, 18);
  //pg.fill(51);
  //pg.text("wabi", x, 9);
//}