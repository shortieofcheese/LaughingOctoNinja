//DO NOT DETELE THIS
Umbrella umbrella;
Rain[] rain = new Rain [630];
int auxPosition = 0;
int auxJumper = 0;  
float health;

// Set stuff here
int umbrellaSize = 50;
int dropSize = 10;
float dropSpeed = 6;


void setup(){
  
 size(600, 400);
 
 umbrella = new Umbrella();
 umbrella.setSize(umbrellaSize);
 
 for (int i = 0; i < rain.length; i++){
    rain[i] = new Rain();
    if(i % 30 == 0){
      auxPosition++;
      auxJumper = 0;
    } else{
      auxJumper++; 
    }    
    rain[i].setDrop((auxJumper * 20) + dropSize, (auxPosition*20) - height, dropSize, dropSpeed);
 }
}

void draw(){
 background(255);  
  
  for (int j = 0; j < rain.length; j++){
    rain[j].drawDrop();
    rain[j].repeatDrop();
    rain[j].verifyCollision(umbrellaSize);
  }
  
  umbrella.drawUmbrella();
  
  drawHealthBar();
  
}

void drawHealthBar(){
 
 float hp = map (health, 0, 10, width, 0);
 fill(0,255,0);
 rect(hp,0,width,10);
 health = 1;
  
}

