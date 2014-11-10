// DO NOT DETELE THIS
Umbrella umbrella;
Rain[] rain = new Rain [630];
int auxPosition = 0;
int auxJumper = 0;  
Guy guy;
float health;

// Set stuff here
int umbrellaSize = 50;
int dropSize = 10;
float dropSpeed = 6;
float guySpeed = 3.0f;
int guySize = 19;
float guyStartPosX = 0;


void setup(){
  
 size(600, 400);
 
 umbrella = new Umbrella();
 umbrella.setSize(umbrellaSize);
 
 for (int i = 0; i < rain.length; i++){

    rain[i] = new Rain();
    if (i % 30 == 0) {
      auxPosition++;
      auxJumper = 0;
    } else {
      auxJumper++;
    }    
    rain[i].setDrop((auxJumper * 20) + dropSize, (auxPosition*20) - height, dropSize, dropSpeed);

  }
  guy = new Guy();
  guy.prime(guySpeed, guySize, guyStartPosX);
  
  health = 100;
}

void draw(){
  background(255);
  
  if (health > 0){
   for (int j = 0; j < rain.length; j++){
    rain[j].drawDrop();
    rain[j].repeatDrop();
    rain[j].verifyCollision(umbrellaSize, guySize, guy.posX);
  }

  guy.Update();
  
  umbrella.drawUmbrella();
  drawHealthBar();
 }
 
 reset(); 
  
  
  
  
}

void drawHealthBar(){
 
 float hp = map (health, 0, 100, width, 0);
 fill(0,255,0);
 rect(hp,0,width,10);

}

void reset(){
  
  if (health <=0){
   textSize(40);
   textAlign(CENTER, CENTER);
   fill(0);
   text ("Game Over", width/2, height/2);
    
  }
  
}

