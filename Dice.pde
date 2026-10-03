void setup() {
    size(600, 400); 
    noLoop();
}

void draw() {
      //your code here
      background(255);
 
    int sumofdots = 0;
       for(int y = 10; y < 250; y = y + 80) //dots
    {
    for(int x = 10; x < 450; x = x + 80)
    {
      Die bob = new Die(x,y);
      bob.roll();
      bob.show();
      
      sumofdots = sumofdots + bob.numdots;
    }
    }
    fill(0);
    textSize(20);
    text("Total: " + sumofdots, 10, 300); 
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, numdots;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
      }
      void roll()
      {
          //your code here
       numdots = (int)(Math. random() *6) + 1;

      }
      void show() 
      {
          //your code here
          fill(175,175,0);
          square(myX, myY, 50);
          fill (0);
        //for(int d = 40; d <= 500; d = d + 80)
        
          if (numdots == 1){
           ellipse(myX+25, myY+28, 10,10);
          }
          
           if (numdots == 2){
           ellipse (myX+25, myY+17, 10, 10);
           ellipse (myX+25, myY+33, 10,10);
           }
           
           if(numdots == 3) {
           ellipse(myX+15, myY+15, 10, 10);
            ellipse(myX+25, myY+25, 10, 10);
            ellipse(myX+35, myY+35, 10, 10);
           }
           
            if(numdots == 4) {
           ellipse(myX+18, myY+17, 10, 10);
            ellipse(myX+32, myY+17, 10, 10);
            ellipse(myX+18, myY+33, 10, 10);
            ellipse(myX+32, myY+33, 10, 10);
            }
            
             if(numdots == 5) {
            ellipse(myX+25, myY+25, 10,10); //middle
           ellipse(myX+15, myY+15, 10, 10); //top left
            ellipse(myX+35, myY+15, 10, 10);
            ellipse(myX+15, myY+35, 10, 10);
            ellipse(myX+35, myY+35, 10, 10);
            }
             if(numdots == 6) {
           ellipse(myX+18, myY+14, 10, 10); //top left
           ellipse(myX+32, myY+14, 10, 10); //top right
           ellipse(myX+18, myY+28, 10, 10); //middle left
           ellipse(myX+32, myY+28, 10, 10); //middle right
           ellipse(myX+18, myY+40, 10, 10); //bottom left
           ellipse(myX+32, myY+40, 10, 10);
            }
     }
  }

