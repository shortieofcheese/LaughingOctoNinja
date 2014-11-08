//DO NOT DETELE THIS
Umbrella umbrella;
Rain[] rain = new Rain [630];
int auxPosition = 0;
int auxJumper = 0;

// Set stuff here
int umbrellaSize = 20;
int dropSize = 10;
float dropSpeed = 5;


void setup(){
  
 size(600, 400);
 
 umbrella = new Umbrella();
 umbrella.setSize(20);
 
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
  
  umbrella.drawUmbrella();
  
  for (int j = 0; j < rain.length; j++){
    rain[j].drawDrop();
    rain[j].repeatDrop();
  }
  
}

