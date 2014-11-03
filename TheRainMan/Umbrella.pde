
class Umbrella {
  
PVector umbrellaPosition = new PVector(mouseX, height/2);
int umbrellaSize;

void drawUmbrella(){
 fill(100);
 ellipse(mouseX, umbrellaPosition.y, 20, 20);
  
}
}
