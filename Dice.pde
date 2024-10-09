void setup()
  {
      noLoop();
      size (420,600);
}
  void draw()
  {
      background(255);
    int sum = 0;
      Die bob = new Die(0,0);
      bob.show();
     for ( int y = 0; y < 550; y = y + 30){
     for (int x = 0; x < 400; x = x + 30){
        sum = sum + bob.roll; 
        bob = new Die(x,y);
        bob.show();  
      }
       
   }
    text(sum,200,600);
}
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      
      int roll, myX, myY;
      Die(int x, int y) //constructor
      {
          roll();
          myX = x;
          myY= y;
        }
      void roll()
      {
        roll = (int)(Math.random()*6)+1;
      
    }
      void show()
      {
        fill(255);
        rect(myX,myY,30,30);    
        fill(0); 
       
      if(roll == 1){
      ellipse (myX + 15,myY +15,5,5);  
       
       }
      else if(roll == 2){
      ellipse(myX+25,myY + 5,5,5);
      ellipse(myX + 5,myY+25,5,5);
        
      }
      else if(roll == 3){
      ellipse (myX + 15,myY +15,5,5);  
      ellipse(myX+25,myY + 5,5,5);
      ellipse(myX + 5,myY+25,5,5);
        
     }
       else if(roll == 4){
      ellipse(myX + 25,myY + 25,5,5);
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY + 5,5,5);
      ellipse(myX + 5,myY+25,5,5);
       
     }
      else if(roll == 5){
      ellipse(myX + 25,myY + 25,5,5);
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY + 5,5,5);
      ellipse(myX + 5,myY+25,5,5);
      ellipse (myX + 15,myY +15,5,5); 
  
   }
     else {
      ellipse(myX + 25,myY + 25,5,5);
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY + 5,5,5);
      ellipse(myX + 5,myY+25,5,5); 
      ellipse(myX+25,myY + 15,5,5);
      ellipse(myX + 5,myY+15,5,5); 
     
   }

 }

}
