final color c_background = color(255, 71, 211);

final color[] c_colors = {
  color(214, 207, 88), 
  color(56, 187, 194), 
  color(69, 131, 255), 
  color(104, 107, 142), 
};

color getCol(int index) {
  return c_colors[index%c_colors.length];
}
