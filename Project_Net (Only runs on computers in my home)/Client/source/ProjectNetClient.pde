/*Libraries*/
import processing.net.*;

/**Declare Objects**/

//Key Variables

  //A
  boolean aP;
  
  //D
  boolean dP;
  
//Server

  //Server Won Boolean
  int sW = 0;
  
  //Client Verson
  boolean cSW = false;
  
//Client
Client c;

  //Input
  String input;
  
  //Spliced Data
  int data [];
  
  //Server Current Scene
  int sCS;
  
  //Client Won Boolean
  int cW = 0;
  
  //Client Version
  boolean cCW = false;
  
//Scene Manager
SM sM;

//Player 1
P p1;

//Player 2
P p2;


//End Scene

  //Buttons
  
    //Play Again Button
    B eSpAB;




/*---------------------------------------------*/




/**Setup**/
void setup() {

/*Screen*/

//Window Size
size(1350, 650);

//Frames Per Second
frameRate(60);
  
  
/*Define Objects*/

// Connect to the server’s IP address and port­
//Upstairs Computer IP: 192.168.1.151
//Downstairs Computer IP: 192.168.1.236
c = new Client(this, "192.168.1.236", 49152);

//Scene Manager
sM = new SM();

//Player 1
p1 = new P(1150, 408);

//Player 2
p2 = new P(200, 408);


//End Scene

  //Buttons
  
    //Play Again Button
    eSpAB = new B(550, 540, 120, 30, "Play Again", 20, 560, 560);
  
}



/*---------------------------------------------*/
  
  
  
  
/*Mouse Clicked Method*/
void mouseClicked() {
  
  //If player is on End Scene
  if (sM.cS == 2) {
    
    //If Play Again Button is Pressed
    if (eSpAB.moB == true) {
      
      //Reset boolean
      eSpAB.moB = false;
      
      //Reset Game
      sM.r();
      
    }
    
  }
  
}
  
  
  
/*---------------------------------------------*/


/**Key Pressed Tracker**/
void keyPressed() {

//If W is pressed and jump meter has loaded and if player is not falling
if (keyCode == 87 && p1.mL == true && p1.f == false) {
  
  //Check if Player is on the platforms On Level 1
  if (p1.oG == true) {
    
    //Make player go up
    p1.jS = 8;
    
  
    //Reset Jump Meter
  
      //Set Jump Meter Loaded Boolean to false
      p1.mL = false;
  
      //Move circle back
      p1.meCX = p1.meX;
    
      //Start Loading meter again
      p1.meCS = 1;
    
  }
  
}


//If A is pressed And It Is Not Locked
if (keyCode == 65) {
  
  //Set Key Booleans
 
    //A Key
    aP = true;
    
    //D Key
    dP = false;
    
    
  //Set Direction Boolean
  p1.dFL = true;
  
}


//If D is pressed And It Is Not Locked
if (keyCode == 68) {
  
  //Set Key Booleans 
  
    //A Key 
    aP = false; 
    
    //D Key 
    dP = true;
    
    
  //Set Direction Boolean
  p1.dFL = false;
  
}


//If Space Is Pressed And Sword Meter Is Loaded
if (keyCode == 32 && p1.smL == true) {
  
  //Take the sword out
  p1.sO = true;
    
  
    //Reset Sword Meter
  
      //Set Sword Meter Loaded Boolean to false
      p1.smL = false;
  
      //Move circle back
      p1.smeCX = p1.smeX;
    
      //Start Loading meter again
      p1.smeCS = 1;
  
  
  
}

}
  
  
  
/*---------------------------------------------*/





void keyReleased() {
  
//If A is released
if (keyCode == 65) {
  
  //Set Booleans
 
    //A Key
    aP = false;
  
}


//If D is released
if (keyCode == 68) {
  
  //Set Booleans
    
    //D Key 
    dP = false;
  
}
  
}



/*---------------------------------------------*/
 



/**Draw**/
void draw() {
  
//Communicate With Server  
      
  //Write Coordinates Of Player 1
  c.write(p1.x + " " + p1.y + " " + p1.sX + " " + p1.sY + " " + sM.cS + " " + p1.l + "\n");
      
  //Read Data From Server
  if (c.available() > 0) { 
    
    //Get String
    input = c.readString(); 
    
    // Only up to the newline
    input = input.substring(0,input.indexOf("\n"));  
    
    // Split values into an array
    data = int(split(input, ' '));
       
   //Interpret Values
       
     //Coordinates
            
       //X
       p2.x = data[0];
              
       //Y
       p2.y = data[1];
           
     //Sword Coordinates
         
       //X
       p2.sX = data[2];
           
       //Y
       p2.sY = data[3];
            
     //Current Scene
     sCS = data [4];
           
     //Lives
     p2.l = data[5];
     
     //Win Booleans
     
       //Client Win
       cW = data[6];
       
       //Server Win
       sW = data[7];
            
  }

  
//Run Set - Scene Method
sM.sS();
  
}



/*---------------------------------------------*/



/**Classes**/


/*Scene Manager*/
public class SM {
  
//Instance Fields

  //Current Scene
  int cS;
  
  
//Constructor Method
SM() {
  
  //Set Instances To Parameters
  
    //Current Scene
    cS = 1;
  
}


//Methods

  //Game Scene
  public void gS() {
    
    //Current Scene
    cS = 1;
  
    //Background
    
      //Sky
      background(3, 173, 252);
      
      //Ground
      
        //Setup
        
        //Color - Black
        fill(160, 82, 45);
        
        //Outline - None
        noStroke();
          
      //Draw
      rect(0, 627, 1350, 100);
    
    //Draw Players
    
      //Player 1
        
        //Draw
        p1.g();
        
      //Player 2
        
        //If online player is connected and on scene 1
        if (c != null && sCS == 1) {
          
          //Draw Player 2
          p2.oG();
        
    
        //Collision
        
          //If Player 2's sword collides with player 1
          if ((p2.sX > p1.x - p1.w/2 && p2.sX < p1.x + p1.w/2) && (p2.sY > p1.y - 65 && p2.sY < p1.y + 36)) {
            
            //Reset player 1 position
            
              //X
              p1.x = p1.oX;
              
              //Y
              p1.y = p1.oY;
              
            //Subtract 1 from lives
            p1.l -= 1;
            
          }
        
      }
      
       
      //If someone runs out of lives, go to end scene
          
          //If Client Player Won
          if (cW == 1) {
              
            cCW = true;  
            
            //Go to end scene
            cS = 2;
              
          }
            
          //Else If Server Player Won
          if (sW == 1) {
              
            cSW = true;  
            
            //Go to end scene
            cS = 2;
              
          }
            
     
      
  }
  
  /*----------------*/
  
  //End Scene
  public void eS() {
    
    //Current Scene
    cS = 2;
    
    //Background - Grey
    background(211, 211, 211);
    
    
    //Reset Lives to avoid glitch at restart
    p1.l = 4;
    
    
    //Reset Player Coordinates
    
      //X
      p1.x = p1.oX;
      
      //Y
      p1.y = p1.oY;
      
      //Sword Coordinates
      
        //X
        p1.sX = p1.x;
        
        //Y
        p1.sY = p1.y;
   
    
    //Text
    
      //If player loses
      if (cSW == true) {
        
        //Setup
        
          //Color - Red
          fill(255, 0, 0);
          
          //Text Size
          textSize(60);
          
        //Text
        text("Sorry, you lost. Keep trying, \n       and you will win!", 280, 200);
        
      }
      
      //Else (If player wins)
      if (cCW == true) {
        
        //Setup
        
          //Color - Red
          fill(255, 0, 0);
          
          //Text Size
          textSize(60);
          
        //Text
        text("Congratulations, you won!", 300, 200);
        
      }
  
  
    //Buttons
  
      //Play Again Button
      
        //If server player is on scene 1
        if (sCS == 1) {
          
          //Draw
          eSpAB.g();
      
        }
    
  }
  
  /*----------------*/
  
  //Reset Method
  public void r() {
    
    //Current Scene
    cS = 1;
    
    //Win Booleans (Client Version)
    
      //Client Win
      cCW = false;
      
      //Server Win
      cSW = false;
    
    //Player
    
      //Reset Sword Meter
      
        //Keep sword in
        p1.sO = false;
    
        //Set Sword Meter Loaded Boolean to false
        p1.smL = false;
    
        //Move circle back
        p1.smeCX = p1.smeX;
      
        //Start Loading meter again
        p1.smeCS = 1;
    
      //Coordinates
      
        //X
        p1.x = p1.oX;
      
        //Y
        p1.y = p1.oY;
        
      //Lives
      p1.l = 4;
    
  }
  
  /*----------------*/
  
  //Set Scene
  public void sS() {
    
    //If Current Scene Is 1
    if (cS == 1) {
      
      //Go to Game Scene
      gS();
      
    }
    
    //If Current Scene Is 2
    if (cS == 2) {
      
      //Go to Game Scene
      eS();
      
    }
    
  }
  
}


/*-------------------------------*/


/*Player*/
public class P {
  
//Instance Fields

  //Coordinates
  
    //X
    int x;
    
    //Y
    int y;
        
    //Original Coordinates
        
      //X
      int oX;
          
      //Y
      int oY;
    
  //Dimensions
  
    //Width
    int w;
    
    //Height
    int h;
    
  //Speed
  int s;
  
  //Lives
  int l;
  
  //Direction Facing Left Boolean
  boolean dFL;
    
  //Lightning Physics Engine
  
    //Gravity Pull
    int gP;
    
    //Jump Speed
    int jS;
    
    //Player Falling Boolean
    boolean f;
    
    //Player On Platform Boolean
    boolean oG;
    
    
  //Jump Meter
  
    //Loaded Boolean
    boolean mL;
  
    //Rectangle
    
      //Coordinates
      
        //X
        int meX;
        
        //Y
        int meY;
        
      //Dimensions
      
        //Width
        int meW;
        
        //Height
        int meH;
        
    //Circle
    
      //Coordinates
      
        //X
        int meCX;
        
        //Y
        int meCY;
        
      //Dimensions
      
        //Width
        int meCW;
        
        //Height
        int meCH;
        
      //Speed
      int meCS;
        
        
    //Sword
    
      //Tip Coordinates
      
        //X
        int sX;
        
        //Y
        int sY;
        
      //Sword Out Boolean
      boolean sO;
    
  //Sword Meter
  
    //Loaded Boolean
    boolean smL;
  
    //Rectangle
    
      //Coordinates
      
        //X
        int smeX;
        
        //Y
        int smeY;
        
      //Dimensions
      
        //Width
        int smeW;
        
        //Height
        int smeH;
        
    //Circle
    
      //Coordinates
      
        //X
        int smeCX;
        
        //Y
        int smeCY;
        
      //Dimensions
      
        //Width
        int smeCW;
        
        //Height
        int smeCH;
        
      //Speed
      int smeCS;


//Constructor Method
P(int x,  int y) {
  
  //Set Instances To Parameters

    //Coordinates
  
      //X
      this.x = x;
    
      //Y
      this.y = y;
      
      //Original
      
        //X
        this.oX = x;
        
        //Y
        this.oY = y;
      
    //Dimensions
    
      //Width
      w = 40;
      
      //Height
      h = 100;
      
    //Speed
    s = 0;
    
    //Lives
    l = 4;
    
    //Direction Facing Left Boolean
    dFL = false;
      
    //Lightning Physics Engine
    
      //Gravity Pull
      gP = 4;
      
      //Jump Speed
      jS = 0;
      
      //Person On Gravity Pull boolean
      f = false;
      
      //Player On Platform Boolean
      oG = false;
      
      
    //Jump Meter
    
      //Loaded Boolean
      this.mL = false;
  
      //Rectangle
    
        //Coordinates
      
          //X
          this.meX = 20;
        
          //Y
          this.meY = -20;
        
        //Dimensions
      
          //Width
          this.meW = 100;
        
          //Height
          this.meH = 10;
        
      //Circle
    
        //Coordinates
      
          //X
          this.meCX = meX;
        
          //Y
          this.meCY = meY + 5;
        
        //Dimensions
      
          //Width
          this.meCW = 10;
        
          //Height
          this.meCH = 10;
          
        //Speed
        this.meCS = 0;
        
        
    //Sword
    
      //Tip Coordinates
      
        //X
        sX = x;
        
        //Y
        sY = y;
        
      //Sword Out Boolean
      sO = false;
        
    //Sword Meter
    
      //Loaded Boolean
      this.smL = false;
  
      //Rectangle
    
        //Coordinates
      
          //X
          this.smeX = 20;
        
          //Y
          this.smeY = 30;
        
        //Dimensions
      
          //Width
          this.smeW = 100;
        
          //Height
          this.smeH = 10;
        
      //Circle
    
        //Coordinates
      
          //X
          this.smeCX = smeX;
        
          //Y
          this.smeCY = smeY + 5;
        
        //Dimensions
      
          //Width
          this.smeCW = 10;
        
          //Height
          this.smeCH = 10;
          
        //Speed
        this.smeCS = 0;
  
}

//Methods

  //Generate
  void g() {
    
    //Draw
    
      //Sword
      
        //Setup
        
          //Color
          stroke(255, 0, 0);
          
          //Thickness
          strokeWeight(10);
          
          //Sword Tip Coordinates
          
            //Default
            
              //X
              sX = x;
              
              //Y
              sY = y;
          
            //If Sword is out
            if (sO == true) {
              
              //If Player Is Facing Left
              if (dFL == true) {
                
                sX = x - 50;
                
              }
              
              //Else If Player Is Facing Right
              if (dFL == false) {
                
                sX = x + 50;
                
              }
              
            }
          
        //Draw
        line(x, y, sX, sY);
    
      //Body
    
        //Setup
      
          //Outline - None
          noStroke();
      
          //Color - Red
          fill(255, 0, 0);
        
        //Draw
        ellipse(x, y, w, h/2);
      
      //Head
      
        //Setup
        
          //Outline - None
          noStroke();
          
          //Color - Black
          fill(255, 230, 270);
          
        //Draw
        ellipse(x, y - 40, w, h/3);
        
        //Hair
        
          //Setup
          
            //Outline - None
            noStroke();
            
            //Color
            fill(69, 40, 0);
            
          //Draw
          rect(x - w/2, y + h/4 - 90, w, h/8 + 5);
          
      //Eyes
      
        //Left Eye
        
          //Setup
          
            //Outline
            
              //Thickness
              strokeWeight(5);
            
              //Color
              stroke(69, 40, 0);
            
          //Draw
          point(x - 5, y - 40);
          
        //Right Eye
        
          //Setup
          
            //Outline
            
              //Thickness
              strokeWeight(5);
            
              //Color
              stroke(69, 40, 0);
            
          //Draw
          point(x + 5, y - 40);
          
        //Mouth
        
          //Setup
          
            //Outline
            
              //Thickness
              strokeWeight(5);
            
              //Color
              stroke(69, 40, 0);
            
          //Draw
          line(x - 5, y - 40 + 10, x + 5, y - 40 + 10);
        
      //Waist Covering
      
        //Setup
          
          //Outline - None
          noStroke();
            
          //Color - Black
          fill(0, 0, 255);
            
        //Draw
        rect(x - w/2, y + h/4 - 15, w, h/8 + 5);
        
      //Legs
      
        //Laft Leg
        
          //Setup
          
            //Outline - None
            noStroke();
            
            //Color - Black
            fill(0, 0, 255);
            
          //Draw
          rect(x - w/2, y + h/4 - 15, w/3, h/4 + 5);
          
        //Right Leg
        
          //Setup
          
            //Outline - None
            noStroke();
            
            //Color - Black
            fill(0, 0, 255);
            
          //Draw
          rect(x + w/2 - w/3, y + h/4 - 15, w/3, h/4 + 5);
          
      //Lives Meter
      
        //Setup
        
          //Color
          fill(0, 0, 0);
          
          //Size
          textSize(30);
          
        //Draw
        text("Lives: " + l, 1150, 100);
          
    
    //X - Axis Movement
    
      //Set Speed Variable
      x += s;
      
      //If A is Pressed
      if (aP == true) {
        
        //Go Back
        s = -5;
        
      }
      
      //If D is Pressed
      else if (dP == true) {
        
        //Go Forward
        s = 5;
        
      }
      
      //Else
      else {
        
        //Stop Moving
        s = 0;
        
      }
          
          
          
    //Lightning Physics Engine
      
      //Gravity Simulation
      
        //If Player is on a platform or the ground
        if (y == 588) {
        
          //Apply ground reactive force to gravity
          y -= gP;
          
          //Set Player to not falling
          f = false;
          
          //Set On Ground BOolean to True
          oG = true;
        
        }
        
        //Else
        else {
        
          //Set On Ground Boolean To False
          oG = false;
      
        }
    
        //Set Player under constant gravity
        y += gP;
      
      //Jump Mechanic
      
        //Set Player To Be Able To Jump
        y -= jS;
      
        //If player is at the peak height of the jump
        if (meCX == meX + 50) {
          
            //Jump accelleration stops
            jS = 0;
            
            //Set player to falling
            f = true;
          
        }
    
    
    //Create Jump Meter.
    
      //Rectangle
      
        //Draw
        rect(meX, meY, meW, meH);
        
      //Circle
      
        //Draw
        ellipse(meCX, meCY, meCW, meCH);
        
      //Animation
      
        //Set Meter Loading Speed to be able to load the meter
        meCX += meCS;
      
        //If Jump is not loaded
        if (mL == false) {
          
          //Load Meter
          meCS = 1;
          
        }
        
        //If Jump is loaded
        if (meCX >= meX + 100) {
          
          //Stop Loading
          meCS = 0;
          
          //Set Boolean To Loaded
          mL = true;
          
        }
        
        
      //Create Sword Meter.
      
        //Rectangle
        
          //Setup
          
            //Color - Blue
            fill(0, 0, 255);
            
             //Stroke - None
             noStroke();
        
          //Draw
          rect(smeX, smeY, smeW, smeH);
          
        //Circle
        
          //Setup
          
            //Color
            fill(255, 0, 0);
        
          //Draw
          ellipse(smeCX, smeCY, smeCW, smeCH);
          
        //Animation
        
          //Set Meter Loading Speed to be able to load the meter
          smeCX += smeCS;
        
          //If Sword is not loaded
          if (smL == false) {
            
            //Load Meter
            smeCS = 1;
            
          }
          
          //If Sword is loaded
          if (smeCX >= smeX + 100) {
            
            //Stop Loading
            smeCS = 0;
            
            //Set Boolean To Loaded
            smL = true;
            
          }
          
          //If Meter is halfway loaded
          if (smeCX == smeX + 50) {
            
              sO = false;
            
          }
        
      
  }
  
  /*----------------*/
  
  //Generate Online Method
  public void oG() {
    
    //Draw
    
      //Sword
      
        //Setup
        
          //Color
          stroke(255, 0, 0);
          
          //Thickness
          strokeWeight(10);
          
        //Draw
        line(x, y, sX, sY);
    
      //Body
    
        //Setup
      
          //Outline - None
          noStroke();
      
          //Color - Green
          fill(0, 255, 100);
        
        //Draw
        ellipse(x, y, w, h/2);
      
      //Head
      
        //Setup
        
          //Outline - None
          noStroke();
          
          //Color - Black
          fill(255, 230, 270);
          
        //Draw
        ellipse(x, y - 40, w, h/3);
        
        //Hair
        
          //Setup
          
            //Outline - None
            noStroke();
            
            //Color
            fill(69, 40, 0);
            
          //Draw
          rect(x - w/2, y + h/4 - 90, w, h/8 + 5);
          
      //Eyes
      
        //Left Eye
        
          //Setup
          
            //Outline
            
              //Thickness
              strokeWeight(5);
            
              //Color
              stroke(69, 40, 0);
            
          //Draw
          point(x - 5, y - 40);
          
        //Right Eye
        
          //Setup
          
            //Outline
            
              //Thickness
              strokeWeight(5);
            
              //Color
              stroke(69, 40, 0);
            
          //Draw
          point(x + 5, y - 40);
          
        //Mouth
        
          //Setup
          
            //Outline
            
              //Thickness
              strokeWeight(5);
            
              //Color
              stroke(69, 40, 0);
            
          //Draw
          line(x - 5, y - 40 + 10, x + 5, y - 40 + 10);
        
      //Waist Covering
      
        //Setup
          
          //Outline - None
          noStroke();
            
          //Color - Black
          fill(0, 0, 255);
            
        //Draw
        rect(x - w/2, y + h/4 - 15, w, h/8 + 5);
        
      //Legs
      
        //Laft Leg
        
          //Setup
          
            //Outline - None
            noStroke();
            
            //Color - Black
            fill(0, 0, 255);
            
          //Draw
          rect(x - w/2, y + h/4 - 15, w/3, h/4 + 5);
          
        //Right Leg
        
          //Setup
          
            //Outline - None
            noStroke();
            
            //Color - Black
            fill(0, 0, 255);
            
          //Draw
          rect(x + w/2 - w/3, y + h/4 - 15, w/3, h/4 + 5);
          
      //Lives Meter
      
        //Setup
        
          //Color
          fill(0, 0, 0);
          
          //Size
          textSize(30);
          
        //Draw
        text("Lives: " + l, 20, 100);
    
  }
  
}


/*--------------------------*/


/*Buttons*/
public class B {
  
//Instance Fields

  //Coordinates
  
    //X
    int x;
    
    //Y
    int y;
    
  //Dimensions
  
    //Width
    int w;
    
    //Height
    int h;
    
  //Message
  
    //Text
    String m;
    
    //Size
    int mS;
    
    //Coordinates
    
      //X
      int mX;
      
      //Y
      int mY;
      
  //Mouse Over Button
  boolean moB;


//Constructor
B(int x, int y, int w, int h, String m, int mS, int mX, int mY) {
  
  //Set Instances To Parameters
  
    //Coordinates
    
      //X
      this.x = x;
      
      //Y
      this.y = y;
      
    //Dimensions
    
      //Width
      this.w = w;
      
      //Height
      this.h = h;
      
    //Message
    
      //Text
      this.m = m;
      
      //Size
      this.mS = mS;
      
      //Coordinates
      
        //X
        this.mX = mX;
        
        //Y
        this.mY = mY;
        
    //Mouse Over Button
    this.moB = false;
  
}


//Methods

  //Generate
  public void g() {
    
    //Button Frame
    
      //Setup
    
        //Outline - None
        noStroke();
      
        //Color - Orange
        fill(255, 165, 0);
        
          //If mouse is over button
          if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
            
            //Change color to black
            fill(0, 0, 0);
            
            //Set mouse over button boolean to true
            moB = true;
            
          };
      
      //Draw Rectangle
      rect(x, y, w, h);
      
    //Message
    
      //Setup
      
        //Size
        textSize(mS);
        
        //Color - Purple
        fill(128, 0, 128);
        
      //Text
      text(m, mX, mY);
      
  }

}
