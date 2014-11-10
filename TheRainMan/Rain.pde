class Rain {

  float posX, posY, dropSize, fallSpeed;

  void setDrop(float _posX, float _posY, float _dropSize, float _fallSpeed) {
    posX = _posX;
    posY = _posY;
    dropSize = _dropSize;
    fallSpeed = _fallSpeed;
  }

  void drawDrop() {
    fill(lightBlue);
    
    ellipse(posX, posY, dropSize/2, dropSize);

    posY += fallSpeed;
  }

  void repeatDrop() {

    if (posY > height + dropSize) {

      posY = -dropSize/2;
    }
  }

  void verifyCollision(int umbrella) {

    if (posY + dropSize/2 >= height/2 - umbrella/2 && posY - dropSize/2 < height/2 + umbrella/2 && posX + dropSize/4 >= mouseX - umbrella/2 && posX - dropSize/4 < mouseX + umbrella/2) {

      posY = -height/2;
    }
  }
}

