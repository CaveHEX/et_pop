class Placer {

  ArrayList<Shape> shapes;

  Placer() {
    this.generate();
  }

  void generate() {
    shapes = new ArrayList<Shape>();

    int count = floor(random(20, 50));

    for ( int i = 0; i < count; ++i ) {
      shapes.add(new Shape());
    }
  }

  void render() {
    for ( Shape s : shapes ) {
      s.render();
    }
  }
}
