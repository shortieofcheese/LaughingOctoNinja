
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

<<<<<<< HEAD
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

=======

>>>>>>> origin/master
