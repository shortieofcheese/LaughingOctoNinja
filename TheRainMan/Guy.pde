
class Guy {

  float movement;
  float speed;
  int guySize;
  float posX;

  void prime(float _speed, int _size, float _x) {
    speed = _speed;
    posX = _x;
    guySize = _size;
  }

  void Update() {

    ellipse(posX, 390, guySize, guySize);
    posX += speed;
    
    if (posX >= width || posX < 0) {
      speed *= -1;
    }
  }
}


