class Rain {

float fallSpeed;
int dropSize;
PVector dropPosition = new PVector();

void setDrop(float speed, int size, float posX, float posY){
 
 speed = fallSpeed;
 size = dropSize;
 dropPosition.x = posX;
 dropPosition.y = posY;
 
 
}

void drawDrop(){
  fill(200);
  ellipse(dropPosition.x, dropPosition.y, dropSize, dropSize);

}

void makeDropFall(){
  
  dropPosition.y += fallSpeed;
  
}

}
