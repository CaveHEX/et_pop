class Shape {

  PShape shape;
  PVector pos;

  float angle = 0;
  float spinControl;
  float h = 0;

  Shape() {
    this.generate();
  }

  void generate() {
    angle = random(TWO_PI);
    h = random(300);
    spinControl = random(-1, 1);
    int index = floor(random(50));
    int kind = floor(random(5));
    float radius = random(30, 120);
    pos = new PVector(
      random(width),
      random(height),
      0
    );

    switch ( kind ) {
    case 0:
      shape = createCircle(radius, index);
      break;
    case 1:
      shape = createTriangle(radius, index);
      break;
    case 2:
      shape = createSquare(radius, index);
      break;
    case 3:
      shape = createRect(radius, index);
      break;
    case 4:
      shape = createDotGrid(round(radius / 10), index);
      break;
    }
  }

  void render() {
    push();
    translate(pos.x, pos.y, h);
    rotate(angle + t * spinControl);
    shape(shape, 0, 0);
    pop();
  }
}

PShape makeShadow(PShape base, color col, float offset) {
  float ex = 0.1;
  color c = color(red(col) * ex, green(col) * ex, blue(col) * ex); 
  
  PShape s = createShape();
  
  
  return s;
}
