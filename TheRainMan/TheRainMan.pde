Umbrella umbrella;
Rain[] rain = new Rain [600];

int auxPosition = 0;
int auxJumper = 0;

void setup(){
  
 size(600, 400); 
 umbrella = new Umbrella();
 
 for (int i = 0; i < rain.length; i++){
    rain[i] = new Rain();
    if(i % 30 == 0){
      auxPosition++;
      auxJumper = 0;
    } else{
      auxJumper++; 
    }    
    rain[i].setDrop((auxJumper * 20) + 5, (auxPosition*20) - height, 10, 5);
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
