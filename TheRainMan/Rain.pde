class Rain {
  
float posX, posY, dropSize, fallSpeed;

void setDrop(float _posX, float _posY, float _dropSize, float _fallSpeed){
  posX = _posX;
  posY = _posY;
  dropSize = _dropSize;
  fallSpeed = _fallSpeed;
  
}

void drawDrop(){
  fill(200);
  
  ellipse(posX, posY, dropSize/2, dropSize);
  
  posY += fallSpeed;
}

void repeatDrop(){
 
 if (posY > height + dropSize/2){
  
  posY = -dropSize/2;
   
 }
  
}



}
