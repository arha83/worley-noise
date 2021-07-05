
PVector[] points;
PVector near;
float minDist;
float dist;
int n;
int size;
float c;

void setup() {
  fullScreen();
  //size(640, 360);
  background(255);
  fill(0);

  n=100;
  size= 200;

  minDist= 10000;
  near= new PVector(10000, 10000);

  points= new PVector[n];
  for (int i=0; i < n; i++) {
    points[i]= new PVector(int(random(width)), int(random(height)));
  }

  //for (int k=0; k < n; k++) circle(points[k].x, points[k].y, 10);
  
  for (int i=0; i < width; i++) { //<>//
    for (int j=0; j < height; j++) { //<>//
      
      minDist= 10000;
      for (int k=0; k < n; k++) { //<>//
        dist= dist(i, j, points[k].x, points[k].y);
        if (dist < minDist) { //<>//
          minDist= dist;
          near.x= points[k].x;
          near.y= points[k].y;
        }
      }

      c= map(minDist, 0, size, 0, 255);
      stroke(c);
      point(i, j);
    }
  }
  
  
}

void draw() {
  noLoop();
}

void mousePressed(){
  exit();
}
