
class Guy {

  float movement;
  float speed;
  float x = 0;

  void prime(float _speed) {
    speed = _speed;
  }

  void Update() {

    ellipse(x, 390, 19, 19);
    x += speed;
    
    if (x >= width || x < 0) {
      speed *= -1;
    }
  }
}


