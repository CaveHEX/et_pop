void persp() {
  float fov = PI / map(sin(t), -1, 1, 2.0, 2.2);
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), 
    cameraZ/10.0, cameraZ*10.0);
}
