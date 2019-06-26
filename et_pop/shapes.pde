PShape createCircle(float radius, int colIndex) {
  PShape s = createShape();
  s.beginShape(TRIANGLE_FAN);

  s.noStroke();
  s.fill(getCol(colIndex));

  int steps = 50;
  float step = TWO_PI / steps;

  s.vertex(0, 0, 0);

  for ( int i = 0; i <= steps; ++i ) {
    float a = step * i;

    PVector vx = new PVector(
      cos(a), 
      sin(a)
      ).mult(radius);

    s.vertex(vx.x, vx.y, vx.z);
  }

  s.endShape();
  return s;
}

PShape createTriangle(float radius, int colIndex) {
  PShape s = createShape();
  s.beginShape(TRIANGLE_FAN);

  s.noStroke();
  s.fill(getCol(colIndex));

  int steps = 3;
  float step = TWO_PI / steps;

  s.vertex(0, 0, 0);

  for ( int i = 0; i <= steps; ++i ) {
    float a = step * i;

    PVector vx = new PVector(
      cos(a), 
      sin(a)
      ).mult(radius);

    s.vertex(vx.x, vx.y, vx.z);
  }

  s.endShape();
  return s;
}

PShape createSquare(float w, int colIndex) {
  PShape s = createShape();
  s.beginShape();

  s.noStroke();
  s.fill(getCol(colIndex));

  w /= 2;

  s.vertex(w, w, 0);
  s.vertex(-w, w, 0);
  s.vertex(-w, -w, 0);
  s.vertex(w, -w, 0);

  s.endShape(CLOSE);
  return s;
}

PShape createRect(float w, int colIndex) {
  PShape s = createShape();
  s.beginShape();

  s.noStroke();
  s.fill(getCol(colIndex));

  w /= 2;
  float ratio = 3.8;
  float wr = w * ratio;

  s.vertex(wr, w, 0);
  s.vertex(-wr, w, 0);
  s.vertex(-wr, -w, 0);
  s.vertex(wr, -w, 0);

  s.endShape(CLOSE);
  return s;
}

PShape createDotGrid(int steps, int colIndex) {
  PShape s = createShape();
  s.beginShape(POINTS);

  s.noStroke();
  s.stroke(getCol(colIndex));

  float step = 20;
  float radius = 8;
  steps /= 2;

  for ( int x = -steps; x < steps; ++x ) {
    for ( int y = -steps; y < steps; ++y ) {
      PVector vx = new PVector(
        x * step,
        y * step
      );
      s.strokeWeight(radius);
      s.vertex(vx.x, vx.y, vx.z);
    }
  }

  s.endShape();
  return s;
}
