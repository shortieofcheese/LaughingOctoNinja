<<<<<<< HEAD
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

=======


class Man {

  PVector manPosition = new PVector (0, 370);
  //(trying to make it random...) 
  int manSize;

  void setSize(int _size) {
    manSize = _size;
  }

  void drawMan () {
    fill(20, 50, 30);
    rect(manPosition.x, manPosition.y, manSize, manSize);
  }
}

//Not working.. - Keiji 



>>>>>>> origin/master

