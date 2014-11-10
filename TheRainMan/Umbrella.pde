
class Umbrella {

  PVector umbrellaPosition = new PVector(mouseX, height/2);
  int umbrellaSize;

  void setSize(int _size) {
    umbrellaSize = _size;
  }

  void drawUmbrella() {
    fill(100);
    ellipse(mouseX, umbrellaPosition.y, umbrellaSize, umbrellaSize);
  }
}

