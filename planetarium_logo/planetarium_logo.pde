//Importerer biblioteker
import processing.svg.*;
import controlP5.*;
ControlP5 cp5;

//Array til stjerner
Star[] stars = new Star[800];

//Loader vector punkt for udgangspunks-stjernen
//samt et array for resten af stjernerne, her kaldet points.
//Loader tekst, og giver den to forskellige at vælge imellem
PVector origin = new PVector(1329, 510);
PVector[] points = new PVector[6];
PShape logo;

//Variabler, til position x og y af pointerne,
//samt variabler til farvesliders
int posX, posY;
int tekstFarveR = 255;
int tekstFarveG = 255;
int tekstFarveB = 255;
int tekstFarveA = 255;

//Farver til sliders
int sliderColorR = color(255, 0, 0);
int sliderColorR1 = color(200, 0, 0);
int sliderColorG = color(0, 255, 0);
int sliderColorG1 = color(0, 200, 0);
int sliderColorB = color(0, 0, 255);
int sliderColorB1 = color(0, 0, 200);


//Setup
void setup() {
  

  //surface.setResizable(true);
  size(1600, 850, P2D);
  smooth();

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  //Tegner logo
  logo = loadShape("logo.svg");

  //Tegn punkter (referere til en void længere nede).
  generatePoints();

  //Load controllers fra Controllers tabben
  controllers();
}
void draw() {
  background(0);

  //Tegner stjerner
  stars();

  //Tegner sort feather bag tekstlogo
  blur();

  //Tegner teksten
  logo();

  //tegn udgangspunkts-stjernen, kaldet origin oppe i globals.
  origin();

  //Tegner linjer og stjerner(points), som findes i en void længere nede.
  linjer_points();
}

void origin() {
  fill(tekstFarveR, tekstFarveG, tekstFarveB);
  noStroke();
  ellipse(origin.x, origin.y, 10, 10);
}

//Tegner sort blur mellem stjerner og logo
void blur() {
  for (int i = 0; i < 82; i++) {
    int x = 859 + (i*5);
    int y = 85 + (i*5);
    int alpha = 255 - (i*3);
    noStroke();
    fill(0, alpha);
    //    print("d:" + d + " ");
    //    print("alpha:" + alpha + " ");
    ellipse(width/2, 500, x, y);
  }
}

//Void som tegner linjer og points.
//Første for loop tegner linjerne, andet for loop tegner stjerner (points).
void linjer_points() {
  stroke(tekstFarveR, tekstFarveG, tekstFarveB, tekstFarveA);
  strokeWeight(4);

  for (int i = 0; i<points.length; i++) {
    line(origin.x, origin.y, points[i].x, points[i].y);
  }

  for (int i = 0; i<points.length; i++) {
    noStroke();
    fill(tekstFarveR, tekstFarveG, tekstFarveB);
    ellipse(points[i].x, points[i].y, 25, 25);
  }
}

//Public void funktion som styre bang knapperne
public void controlEvent(ControlEvent theEvent) {
  if (theEvent.getController().getName().equals("bang")) {
    generatePoints();
  }
  if (theEvent.getController().getName().equals("bang1")) {
    recordSVG();
  }
  if (theEvent.getController().getName().equals("bang2")) {
    saveFrame("line-######.png");
  } 
}

//Generere logotekst
void logo() {
  shape(logo, 273, 476);
}

//Void funktion som generer stjernene (points)
void generatePoints() {
  for (int i = 0; i< points.length; i++) {
    PVector p = new PVector(random(500, 1000), random(250, 500));
    points[i] = p;
  }
}

//Void funktion som optager .svg fil.
void recordSVG() {
  beginRecord(SVG, "logo####.svg");
  linjer_points();
  logo();
  endRecord();
}