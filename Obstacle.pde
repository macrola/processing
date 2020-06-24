class Obstacle{
  //attributes
  int _startX;
  int _spikeX;
  int _spikeY;
  int _squareX;
  int _squareY;
  int _speed;
  boolean _ignore;
  
  Obstacle(int x){ 
    _startX = 1600;
    _squareX = _startX;
    _spikeX = _startX;
    _ignore = false;
  }
  
  void spike(int y){ 
    _spikeY = y; 
    strokeWeight(2);
    stroke(150);
    fill(0);
    triangle(_spikeX, _spikeY, _spikeX+30, _spikeY, _spikeX+15, _spikeY-50);
    _spikeX -= _speed;
  }
  
  void square(int y){ 
    _squareY = y; 
    rectMode(CENTER);
    strokeWeight(2);
    stroke(150);
    fill(0);
    rect(_squareX, _squareY, 50, 50); 
    _squareX -= _speed;
  }
  
  void ignore(){ 
    _ignore = true;
  }
  

 
  int spikeGetX1(){
    return _spikeX+5;  
  }
  int spikeGetX2(){
    return _spikeX+75; 
  }
  int spikeGetY1(){
    return _spikeY-50; 
  }
  int spikeGetY2(){
    return _spikeY; 
  }
  
  //for the square obstacle
  int squareGetX1(){ 
    return _squareX-25;
  }
  int squareGetX2(){ 
    return _squareX+75;
  }
  int squareGetY1(){ 
    return _squareY-25;
  }
  int squareGetY2(){ 
    return _squareY+25;
  }
  
  void move(int speed){ 
    _speed = speed;
  }
}
