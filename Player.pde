class Player{
 
  int _PlayerX; 
  int _PlayerY; 
  int _PlayerSize; 
  int _startY;
  
  int gravity = 6; 
  int jumpCounter = 0; 
  int jumpCounterLimit = 20; 
  boolean isJumping = false; 
  float jumpAngle = 0; 
  float incrementAngle = PI/20; 
  boolean notInAir = true; 

  Player(int x, int y, int size){ 
    _PlayerX = x;
    _PlayerY = y;
    _PlayerSize = size;
    _startY = y; 
  }
  
  void jump(){ 
    if(notInAir){ 
      isJumping = true;  
    }
  }
  
  void physics(){ 
    if(_PlayerY < _startY){ 
      _PlayerY += gravity; 
      notInAir = false; 
    }else{
      notInAir = true; 
    }
    
    if(isJumping){
      _PlayerY -= 12; 
      jumpCounter += 1; 
    }
    if(jumpCounter >= jumpCounterLimit){ 
      isJumping = false;
      jumpCounter = 0; 
    }
    
    if(!notInAir){
      jumpAngle += incrementAngle; 
    }
    if(notInAir){
      jumpAngle = 0;
    }
  }
  
 
  int getX(){ 
    return _PlayerX + _PlayerSize/2; 
  }
  int getY(){
    return _PlayerY + _PlayerSize/2; 
  }

  void display(){ 
    pushMatrix(); 
    
    rectMode(CENTER); 
    translate(_PlayerX, _PlayerY); 
    rotate(jumpAngle);
    
   
    strokeWeight(2);
    PImage img4;
    img4 = loadImage("aaa.png");
    image(img4,-35,-52);
    noStroke();
    popMatrix();
  }
}
