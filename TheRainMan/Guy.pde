
class Guy {

  float movement;
  float speed;
  float x = 0;

  void prime() {
    movement = random(0, 600);
  }

  void Update() {

    ellipse(x, 390, 19, 19);
    x++;
    if (x >= 595) {
      x = -1;
    } else if (x<=10) {
      x = +1;
    }
  }
}


