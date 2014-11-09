// Don't touch this yet! Specially you Daniel! <---- 
/*att: Jasmine <3 (I'll do this before before sunday-monday)
don't worry)*/

class Man {
  
  PVector manPosition = new PVector (400, 0);
  //(trying to make it random...) 
  int manSize;
  
  void setSize(int _size){
    manSize = _size;
  }
  
  void drawMan (){
    fill(20,50,30);
    rect(manPosition.x, manPosition.y, manSize, manSize); 
  }
}

//Not working.. - Keiji 
    
  
  
