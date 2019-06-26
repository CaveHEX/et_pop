import ch.bildspur.postfx.builder.*;
import ch.bildspur.postfx.pass.*;
import ch.bildspur.postfx.*;

PostFX fx;
float t = 0;
boolean shaders = true;

Placer placer;

void setup() {
  size(1280, 720, P3D);
  frameRate(60);
  smooth(8);

  fx = new PostFX(this);

  placer = new Placer();
}

void draw() {
  background(c_background);
  t = frameCount * 0.05;

  persp();
  placer.render();
  perspective();

  if ( shaders ) {
    fx.render()
      .sobel()
      .rgbSplit(map(sin(t), -1, 1, 0, 100))
      .bloom(0.3, 30, 10)
      .blur(9, 0.5)
      .noise(0.1, t)
      .compose();
  }

  if ( frameCount % 100 == 0 ) {
    generate();
  }

  record();
}

void keyPressed() {
  switch ( key ) {
  case 'r':
    generate();
    break;
  case 's':
    screenshot();
    break;
  case 'o':
    recording = true;
    break;
  }
}

void generate() {
  placer.generate();
  shaders = random(1) > 0.5 ? false : true;
}
