/****Ashwath's Birthday Present****/

/**Import Libraries**/

//Sound
import processing.sound.*;

/**Declare Scene Variables**/

//All Scenes

  //Fonts
  
    //Calibria
    PFont calibria;

  //Scene Manager
  SM sM;

  //Player
  P p;
  
  //Speed
  int s = 0;
  
  //Environmental Assets Manager
  EA eaM;
  
  //Key Pressed Variables
    
    //Key Locked Booleans
    
      //A Key
      boolean aP;
      
      //D Key
      boolean dP;
  
  //Debug Mode
  
    //Is On Boolean
    boolean dIO;
    
  //Sounds
    
    //Main Theme
        
      //Path
      String mTP;
      
      //Object
      SoundFile mT;
      
      //Audio Name
      String mTAN = "Royal Heist Main Theme.wav";
    
    
//Main Menu

  //Buttons
  
    //Play Button
    B PB;
    
    
//Story Scene 1

  //Buttons
  
    //Next Button
    B nB;


//Levels

  //All Levels
  
    //Origin
    
      //X
      int originX = 0;
      
      //Y
      int originY = 0;

  //Level 1
    
    //Platforms
    
      //Platform 1
      PF l1P1;
    
      //Platform 2
      PF l1P2;
    
      //Platform 3
      PF l1P3;
      
      //Platform 4
      PF l1P4;
      
      //Platform 5
      PF l1P5;
      
      //Platform 6
      PF l1P6;
      
      //Platform 7
      PF l1P7;
      
      //Platform 8
      PF l1P8;
      
      //Platform 9
      PF l1P9;
      
      //Platform 10
      PF l1P10;
      
      //Platform 11
      PF l1P11;
      
    //Obstacles
    
      //Obstacle 1
      O l1O1;
      
      //Obstacle 2
      O l1O2;
      
      //Obstacle 3
      O l1O3;
      
      //Obstacle 4
      O l1O4;
      
      //Obstacle 5
      O l1O5;
      
      //Obstacle 6
      O l1O6;
      
      //Obstacle 7
      O l1O7;
      
      //Obstacle 8
      O l1O8;
      
    //Moving Obstacles
    
      //Moving Obstacle 1
      MO l1MO1;
      
      //Moving Obstacle 2
      MO l1MO2;
      
      //Moving Obstacle 3
      MO l1MO3;
      
      //Moving Obstacle 4
      MO l1MO4;
      
      //Moving Obstacle 5
      MO l1MO5;
      
      //Moving Obstacle 6
      MO l1MO6;
      
      //Moving Obstalce 7
      MO l1MO7;
      
    //Moving Platforms
    
      //Moving Platform 1
      MPF l1MP1;
      
      //Moving Platform 2
      MPF l1MP2;
      
    //Gateway
    G l1G;
    
    
  //Level 2
  
    //Platforms
    
      //Platform 1
      PF l2P1;
      
      //Platform 2
      PF l2P2;
      
      //Platform 3
      PF l2P3;
      
      //Platform 4
      PF l2P4;
      
    //Obstacles
    
      //Obstacle 1
      O l2O1;
      
      //Obstacle 2
      O l2O2;
      
    //Moving Obstacles
    
      //Moving Obstacle 1
      MO l2MO1;
      
      //Moving Obstacle 2
      MO l2MO2;
      
      //Moving Obstacle 3
      MO l2MO3;
      
      //Moving Obstacle 4
      MO l2MO4;
      
      //Moving Obstacle 5
      MO l2MO5;
      
      //Moving Obstacle 6
      MO l2MO6;
      
      //Moving Obstacle 7
      MO l2MO7;
      
      //Moving Obstacle 8
      MO l2MO8;
      
      //Moving Obstacle 9
      MO l2MO9;
      
      //Moving Obstacle 10
      MO l2MO10;
    
    //Moving Platforms
    
      //Moving Platform 1
      MPF l2MP1;
      
    //Gateway
    G l2G;
    
    
  //Level 3
  
    //Platforms
    
      //Platform 1
      PF l3P1;
      
    //Obstacles
    
      //Obstacle 1
      O l3O1;
      
      //Obstacle 2
      O l3O2;
      
    //Moving Obstacles
    
      //Moving Obstacle 1
      MO l3MO1;
      
      //Moving Obstacle 2
      MO l3MO2;
      
      //Moving Obstacle 3
      MO l3MO3;
      
      //Moving Obstacle 4
      MO l3MO4;
      
      //Moving Obstacle 5
      MO l3MO5;
      
      //Moving Obstacle 6
      MO l3MO6;
      
      //Moving Obstacle 7
      MO l3MO7;
      
      //Moving Obstacle 8
      MO l3MO8;
      
      //Moving Obstacle 9
      MO l3MO9;
      
      //Moving Obstacle 10
      MO l3MO10;
      
      //Moving Obstacle 11
      MO l3MO11;
      
  
  //Level 4
  
    //Platforms
    
      //Platform 1
      PF l4P1;
      
      //Platform 2
      PF l4P2;
      
      //Platform 3
      PF l4P3;
      
      //Platform 4
      PF l4P4;
      
      //Platform 5
      PF l4P5;
      
      //Platform 6
      PF l4P6;
      
      //Platform 7
      PF l4P7;
      
      //Platform 8
      PF l4P8;
      
      //Platform 9
      PF l4P9;
      
      //Platform 10
      PF l4P10;
      
      //Platform 11
      PF l4P11;
      
      //Platform 12
      PF l4P12;
      
      //Platform 13
      PF l4P13;
      
    //Obstacles
      
      //Obstacle 1
      O l4O1;
      
      //Obstacle 2
      O l4O2;
      
      //Obstacle 3
      O l4O3;
      
      //Obstacle 4
      O l4O4;
      
      //Obstacle 5
      O l4O5;
      
      //Obstacle 6
      O l4O6;
      
    //Moving Obstacles
    
      //Moving Obstacle 1
      MO l4MO1;
      
      //Moving Obstacle 2
      MO l4MO2;
      
      //Moving Obstacle 3
      MO l4MO3;


/**------------------------------------------**/


/**Setup**/
void setup() {
  
  
/*Screen*/

  //Size
  size(1300, 650);
  
  //Frames Per Second
  frameRate(60);
  
  //Set Icon
  
    //Load Image
    PImage icon = loadImage("Icon.png");
    
    //Set Image As Icon
    surface.setIcon(icon);
 
  
/*--------------------------*/

/*Define Scene Objects*/
  
//All Scenes

  //Fonts
  
    //Calibria
    calibria = createFont("calibria.ttf", 100);

  //Scene Manager
  sM = new SM();

  //Player
  p = new P();
  
  //Environmental Assets Manager
  eaM = new EA();
    
  //Sounds
    
    //Main Theme
        
      //Path
      mTP = sketchPath(mTAN);
      
      //Object
       mT = new SoundFile(this, mTP);
       
     //Play Test
     mT.loop();
  
//Main Menu

  //Buttons
  
    //Play Button
    PB = new B(500, 300, 280, 75, "Play", 60, 585, 355);
    

//Story Scene 1

  //Buttons
  
    //Next Button
    nB = new B(520, 550, 200, 50, "Next", 30, 590, 580);
  

  
//Levels

  //Level 1
    
    //Platforms
    
      //Platform 1
      l1P1 = new PF(600, 554, 300, 25);
    
      //Platform 2
      l1P2 = new PF(1100, 374, 280, 25);
    
      //Platform 3
      l1P3 = new PF(1350, 478, 250, 25);
      
      //Platform 4
      l1P4 = new PF(1975, 398, 200, 500);
      
      //Platform 5
      l1P5 = new PF(2400, 278, 250, 600);
      
      //Platform 6
      l1P6 = new PF(2825, 458, 250, 400);
      
      //Platform 7
      l1P7 = new PF(3325, 318, 500, 30);
      
      //Platform 8
      l1P8 = new PF(3950, 518, 150, 30);
      
      //Platform 9
      l1P9 = new PF(4200, 382, 150, 30);
      
      //Platform 10
      l1P10 = new PF(4450, 218, 150, 30);
      
      //Platform 11
      l1P11 = new PF(6650, 382, 4000, 4000);
      
    //Obstacles
    
      //Obstacle 1
      l1O1 = new O(600, 620, 1375, 30, false);
      
      //Obstacle 2
      l1O2 = new O(2175, 620, 225, 30, false);
      
      //Obstacle 3
      l1O3 = new O(2300, 260, 30, 600, false);
      
      //Obstacle 4
      l1O4 = new O(2650, 620, 175, 300, false);
      
      //Obstacle 5
      l1O5 = new O(2725, 0, 30, 275, false);
      
      //Obstacle 6
      l1O6 = new O(3075, 620, 200, 30, false);
      
      //Obstacle 7
      l1O7 = new O(3275, 300, 50, 500, false);
      
      //Obstacle 8
      l1O8 = new O(3325, 620, 3325, 30, false);
      
    //Moving Obstacles
    
      //Moving Obstacle 1
      l1MO1 = new MO(3500, 100, 25, 100, 0, 5, 3500, 500);
      
      //Moving Obstacle 2
      l1MO2 = new MO(3600, 50, 25, 100, 0, 5, 3600, 400);
      
      //Moving Obstacle 3
      l1MO3 = new MO(3700, 100, 25, 50, 0, 10, 3700, 500);
      
      //Moving Obstacle 4
      l1MO4 = new MO(3800, 25, 25, 50, 0, 10, 3800, 405);
      
      //Moving Obstacle 5
      l1MO5 = new MO(4130, 25, 30, 50, 0, 10, 4130, 555);
      
      //Moving Obstacle 6
      l1MO6 = new MO(4380, 10, 30, 50, 0, 10, 4380, 450);
      
      //Moving Obstacle 7
      l1MO7 = new MO(5080, 10, 30, 50, 0, 10, 5080, 450);
      
    //Moving Platforms
    
      //Moving Platform 1
      l1MP1 = new MPF(4680, 250, 100, 30, 2, 0, 5480, 250);
      
      //Moving Platform 5
      l1MP2 = new MPF(6380, 350, 100, 30, -2, 0, 5580, 350);
      
    //Gateway
    l1G = new G(6850, 182, 30, 200);
    
    
  //Level 2
  
    //Platforms
    
      //Platform 1
      l2P1 = new PF(500, 478, 250, 500);
      
      //Platform 2
      l2P2 = new PF(2125, 418, 500, 400);
      
      //Platform 3
      l2P3 = new PF(2900, 318, 1500, 30);
      
      //Platform 4
      l2P4 = new PF(2900, 602, 250, 40);
      
    //Obstacles
    
      //Obstacle 1
      l2O1 = new O(750, 620, 1375, 30, false);
      
      //Obstacle 2
      l2O2 = new O(2625, 620, 1375, 30, false);
      
    //Moving Obstacles
    
      //Moving Obstacle 1
      l2MO1 = new MO(900, 100, 25, 100, 0, 10, 900, 500);
      
      //Moving Obstacle 2
      l2MO2 = new MO(1266, 500, 25, 100, 0, -10, 1266, 100);
      
      //Moving Obstacle 3
      l2MO3 = new MO(1632, 240, 25, 50, 0, 20, 1632, 500);
      
      //Moving Obstacle 4
      l2MO4 = new MO(2700, 100, 25, 100, 0, 10, 2700, 500);
      
      //Moving Obstacle 5
      l2MO5 = new MO(3000, 60, 25, 50, 0, 20, 3000, 600);
      
      //Moving Obstacle 6
      l2MO6 = new MO(3200, 50, 25, 50, 0, 25, 3200, 600);
      
      //Moving Obstacle 7
      l2MO7 = new MO(3400, 50, 25, 50, 0, 25, 3400, 600);
      
      //Moving Obstacle 8
      l2MO8 = new MO(3600, 50, 25, 50, 0, 25, 3600, 600);
      
      //Moving Obstacle 9
      l2MO9 = new MO(3800, 50, 25, 75, 0,50, 3800, 600);
      
      //Moving Obstacle 10
      l2MO10 = new MO(4000, 50, 25, 75, 0, 50, 4000, 600);
    
    //Moving Platforms
    
      //Moving Platform 1
      l2MP1 = new MPF(750, 318, 100, 30, 2, 0, 2000, 318);
      
    //Gateway
    l2G = new G(3160, 580, 4, 4);
    
    
  //Level 3
  
    //Platforms
    
      //Platform 1
      l3P1 = new PF(600, 554, 150, 25);
      
    //Obstacles
    
      //Obstacle 1
      l3O1 = new O(1300, 0, 2000, 650, false);
      
      //Obstacle 2
      l3O2 = new O(-2000, 0, 2000, 650, false);
      
    //Moving Obstacles
    
      //Moving Obstacle 1
      l3MO1 = new MO(1400, 500, 100, 30, -10, 0, -5000, 500);
      
      //Moving Obstacle 2
      l3MO2 = new MO(1800, 630, 100, 30, -10, 0, -5000, 630);
      
      //Moving Obstacle 3
      l3MO3 = new MO(2200, 350, 100, 30, -10, 0, -5000, 350);
      
      //Moving Obstacle 4
      l3MO4 = new MO(2600, 280, 100, 30, -10, 0, -5000, 280);
      
      //Moving Obstacle 5
      l3MO5 = new MO(3000, 480, 100, 30, -10, 0, -5000, 480);
      
      //Moving Obstacle 1
      l3MO6 = new MO(3400, 390, 100, 30, -10, 0, -5000, 390);
      
      //Moving Obstacle 1
      l3MO7 = new MO(3800, 550, 100, 30, -10, 0, -5000, 550);
      
      //Moving Obstacle 1
      l3MO8 = new MO(4200, 580, 100, 30, -10, 0, -5000, 580);
      
      //Moving Obstacle 1
      l3MO9 = new MO(4600, 350, 100, 30, -10, 0, -5000, 350);
      
      //Moving Obstacle 1
      l3MO10 = new MO(5000, 510, 100, 30, -10, 0, -5000, 510);
      
      //Moving Obstacle 11
      l3MO11 = new MO(1400, 500, 100, 30, -10, 0, -24000, 500);
      
  
  //Level 4
  
    //Platforms
    
      //Platform 1
      l4P1 = new PF(500, 546, 250, 30);
      
      //Platform 2
      l4P2 = new PF(100, 386, 150, 30);
      
      //Platform 3
      l4P3 = new PF(500, 218, 400, 30);
      
      //Platform 4
      l4P4 = new PF(1450, 446, 300, 220);
      
      //Platform 5
      l4P5 = new PF(1100, 550, 130, 100);
      
      //Platform 6
      l4P6 = new PF(2000, 246, 30, 500);
      
      //Platform 7
      l4P7 = new PF(2400, 126, 30, 600);
      
      //Platform 8
      l4P8 = new PF(2900, 486, 30, 500);
      
      //Platform 9
      l4P9 = new PF(3150, 302, 30, 30);
      
      //Platform 10
      l4P10 = new PF(3580, 534, 30, 30);
      
      //Platform 11
      l4P11 = new PF(3845, 346, 30, 30);
      
      //Platform 12
      l4P12 = new PF(3150, 302, 30, 30);
      
    //Obstacles
    
      //Obstacle 1
      l4O1 = new O(1150, 60, 30, 600, false);
      
      //Obstacle 2
      l4O2 = new O(1120, 110, 30, 550, false);
      
      //Obstacle 3
      l4O3 = new O(1180, 110, 30, 550, false);
      
      //Obstacle 4
      l4O4 = new O(2030, 620, 370, 100, true);
      
      //Obstacle 5
      l4O5 = new O(2430, 620, 470, 100, true);
      
      //Obstacle 6
      l4O6 = new O(2930, 620, 1500, 100, true);
      
    //Moving Obstacles
    
      //Moving Obstacle 1
      l4MO1 = new MO(300, 100, 30, 50, 0, 10, 300, 500);
      
      //Moving Obstacle 2
      l4MO2 = new MO(400, 500, 30, 50, 0, -10, 400, 100);
      
      //Moving Obstacle 3
      l4MO3 = new MO(1000, 50, 30, 100, 0, 15, 1000, 500);
    
    
}



/**------------------------------------------**/



/**Key Pressed Tracker**/
void keyPressed() {

//If W is pressed and jump meter has loaded and if player is not falling
if (keyCode == 87 && p.mL == true && p.f == false) {
  
  //Check if Player is on the platforms On Level 1
  if (sM.cS == 4 && p.oG == true || l1P1.tP == true || l1P2.tP == true || l1P3.tP == true || l1P4.tP == true || l1P5.tP == true || l1P6.tP == true || l1P7.tP == true || l1P8.tP == true || l1P9.tP == true || l1P10.tP == true  || l1MP1.tP == true || l1MP2.tP == true || l1P11.tP == true) {
    
    //Make player go up
    p.jS = 8;
  
    //Reset Jump Meter
  
      //Set Jump Meter Loaded Boolean to false
      p.mL = false;
  
      //Move circle back
      p.meCX = p.meX;
    
      //Start Loading meter again
      p.meCS = 1;
    
  }
  
  //Check if Player is on the platforms On Level 2
  if (sM.cS == 5 && p.oG == true || l2P1.tP == true || l2MP1.tP == true || l2P2.tP == true  || l2P3.tP == true || l2P4.tP == true) {
    
    //Make player go up
    p.jS = 8;
  
    //Reset Jump Meter
  
      //Set Jump Meter Loaded Boolean to false
      p.mL = false;
  
      //Move circle back
      p.meCX = p.meX;
    
      //Start Loading meter again
      p.meCS = 1;
    
  }
  
  //Check if Player is on the platforms On Level 3
  if (sM.cS == 6 && p.oG == true) {
    
    //Make player go up
    p.jS = 8;
  
    //Reset Jump Meter
  
      //Set Jump Meter Loaded Boolean to false
      p.mL = false;
  
      //Move circle back
      p.meCX = p.meX;
    
      //Start Loading meter again
      p.meCS = 1;
    
  }
  
  //Check if Player is on the platforms On Level 4
  if (sM.cS == 14 && p.oG == true || l4P1.tP == true || l4P2.tP == true || l4P3.tP == true || l4P4.tP == true || l4P5.tP == true || l4P6.tP == true || l4P7.tP == true || l4P8.tP == true || l4P9.tP == true || l4P10.tP == true || l4P11.tP == true || l4P12.tP == true) {
    
    //Make player go up
    p.jS = 8;
  
    //Reset Jump Meter
  
      //Set Jump Meter Loaded Boolean to false
      p.mL = false;
  
      //Move circle back
      p.meCX = p.meX;
    
      //Start Loading meter again
      p.meCS = 1;
    
  }
  
}

//If A is pressed And It Is Not Locked
if (keyCode == 65) {
  
  //Go Backward
  s = -5;
  
  //Set Booleans
  
    //A Key
    aP = true;
    
    //D Key
    dP = false;
  
}

//If D is pressed And It Is Not Locked
if (keyCode == 68) {
  
  //Go Forward
  s = 5;
  
  
  
  //Set Booleans
  
    //A Key
    aP = false;
    
    //D Key
    dP = true;
  
}
  
}







/**------------------------------------------**/



/**Key Released Tracker**/
void keyReleased() {
  
//If Keys Were A Or D
if (keyCode == 65 || keyCode == 68) {
  
  //Set Speed to 0;
  s = 0;
  
  
  //Set Booleans
  
    //A Key
    aP = false;
    
    //D Key
    dP = false;
  
}
  
}



/**------------------------------------------**/



/**Mouse Released Tracker**/
void mouseReleased() {
  
//If In Main Menu
if (sM.cS == 1) {
  
  //If Play Button Is Pressed
  if (PB.moB == true) {
    
    //Set Scene To 2
    sM.cS = 2;
    
    //Set Mouse Over Button Boolean To False
    PB.moB = false;
    
  }
  
}

  
//If In Story Scene 1
if (sM.cS == 2) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 3
    sM.cS = 3;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}
  
  
//If In Story Scene 2
if (sM.cS == 3) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 4
    sM.cS = 4;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}


//If In Level 3
if (sM.cS == 7) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 8
    sM.cS = 8;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}


//If In Boss Scene
if (sM.cS == 6) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 7
    sM.cS = 7;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}


//If In Story Scene 3
if (sM.cS == 8) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 9
    sM.cS = 9;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}


//If In Story Scene 4
if (sM.cS == 9) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 10
    sM.cS = 10;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}


//If In Story Scene 5
if (sM.cS == 10) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 11
    sM.cS = 11;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}


//If In Story Scene 6
if (sM.cS == 11) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 12
    sM.cS = 12;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}


//If In Story Scene 7
if (sM.cS == 12) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 13
    sM.cS = 13;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}


//If In Story Scene 8
if (sM.cS == 13) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 14
    sM.cS = 14;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}
  
}



/**------------------------------------------**/




/**Animation**/
void draw() {

//Debug Mode Switch
dIO = false;

//Set Scene
sM.sS();
  
};



/**------------------------------------------**/



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


//Scenes
  
  //Main Menu
  public void mm() {
    
    //Current Scene
    cS = 1;
    
    //Enivronment
    
      //Background
      eaM.b();
      
      
    //Title
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(150);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("Royal Heist", 300, 150);
      
      
    //Buttons
    
      //Play Button
      PB.g();
    
  }
  
  /*--------*/
  
  //Story Scene 1
  public void sS1() {
    
    //Current Scene
    cS = 2;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //Chef Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("Why, hello, Royal Detective! We are so glad you are here. You have to help us, as we are in a dire \nemergency! \n\nAs you know, today is the King Of Futuria's Birthday, the greatest ruler of the world, as he has created a \ntechnological revolution! In his honor, we had to make a cake for him, that has a revolutionary \nchemical that can enhance his physical prowress and double his lifespan! However, disaster has struck! \n\nMe and the other chefs have spent months working on the cake, but this morning, \nKevin Merange, the most feared crime boss in the world, rushed in and stole the cake, \nworth 10 trillion dollars! If the King learns of this we are all surely to be beheaded \n(The King has a bad temper). You must find and defeat Merange before noon, when the cake will be \npresented.", 120, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/
  
  //Story Scene
  public void sS2() {
    
    //Current Scene
    cS = 3;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //Chef Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("We beleive Kevin went through the dungeon, since that would be the hardest place to follow him. \nThe dungeon is guarded by some of our latest techonology, lava hovering pillars, along with floors of lava. \nOnly our most skilled guards with years of practice can get through. Kevin is probably \nhiding in the dungeon, waiting for his men to bring a trasnport, so you must find him quick. \nJust avoid all the superheated pillars and do not touch the lava. And remember, not everything in \nthe dungeon is like it seems. Good luck!", 120, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/

  //Level 1
  public void l1() {
    
    //Current Scene
    cS = 4;
    
    //Enivronment
    
      //Background
      eaM.b();
      
      //Ground
      eaM.gR();
    
    //Draw Player
    p.g();
    
    //Game Objects
        
      //Gateway
      l1G.g();
    
      //Platforms
    
        //Platform 1
        l1P1.g();
        
        //Platform 2
        l1P2.g();
      
        //Platform 3
        l1P3.g();
      
        //Platform 4
        l1P4.g();
      
        //Platform 5
        l1P5.g();
      
        //Platform 6
        l1P6.g();
      
        //Platform 7
        l1P7.g();
      
        //Platform 8
        l1P8.g();
        
        //Platform 9
        l1P9.g();
        
        //Platform 10
        l1P10.g();
        
        //Platform 11
        l1P11.g();
      
      //Obstacles
    
        //Obstacle 1
        l1O1.g();
      
        //Obstacle 2
        l1O2.g();
      
        //Obstacle 3
        l1O3.g();
      
        //Obstacle 4
        l1O4.g();
      
        //Obstacle 5
        l1O5.g();
      
        //Obstacle 6
        l1O6.g();
      
        //Obstacle 7
        l1O7.g();
        
        //Obstacle 8
        l1O8.g();
        
      //Moving Obstacles
      
        //Moving Obstacle 1
        l1MO1.g();
        
        //Moving Obstacle 2
        l1MO2.g();
        
        //Moving Obstacle 3
        l1MO3.g();
        
        //Moving Obstacle 4
        l1MO4.g();
        
        //Moving Obstacle 5
        l1MO5.g();
        
        //Moving Obstacle 6
        l1MO6.g();
        
        //Moving Obstacle 7
        l1MO7.g();
        
      //Moving Platforms
      
        //Moving Platform 1
        l1MP1.g();
        
        //Moving Platform 2
        l1MP2.g();
    
      //Set Speed
      originX -= s;
      
    
    //Set Reset Mechanism
    
      //If Player Touches Obstacle Or Moving Obstacle And Debug Mode Is Off
      if ((l1O1.tP == true || l1O2.tP == true || l1O3.tP == true || l1O4.tP == true || l1O5.tP == true || l1O6.tP == true || l1O7.tP == true || l1MO1.tP == true || l1MO2.tP == true || l1MO3.tP == true || l1MO4.tP == true || l1O8.tP == true || l1MO5.tP == true || l1MO6.tP == true || l1MO7.tP == true) && dIO == false) {
        
        //Reset Levels
        rL();
        
      }
      
      
    //Set Level Ending Mechanism
    if (l1G.tP == true) {
      
      //Reset Levels
      rL();
      
      //Go To Level 2
      cS = 5;
      
    }
         
  }
  
  /*--------*/

  //Level 2
  public void l2() {
    
    //Current Scene
    cS = 5;
    
    //Enivronment
    
      //Background
      eaM.b();
      
      //Ground
      eaM.gR();
    
    //Draw Player
    p.g();
    
    
    //Game Objects
        
      //Gateway
      l2G.g();
    
      //Platforms
      
        //Platform 1
        l2P1.g();
        
        //Platform 2
        l2P2.g();
        
        //Platform 3
        l2P3.g();
        
        //Platform 4
        l2P4.g();
        
      //Obstacles
      
        //Obstacle 1
        l2O1.g();
        
        //Obstacle 2
        l2O2.g();
        
      //Moving Obstacles
      
        //Moving Obstacle 1
        l2MO1.g();
        
        //Moving Obstacle 2
        l2MO2.g();
        
        //Moving Obstacle 3
        l2MO3.g();
        
        //Moving Obstacle 4
        l2MO4.g();
        
        //Moving Obstacle 5
        l2MO5.g();
        
        //Moving Obstacle 6
        l2MO6.g();
        
        //Moving Obstacle 7
        l2MO7.g();
        
        //Moving Obstacle 8
        l2MO8.g();
        
        //Moving Obstacle 9
        l2MO9.g();
        
        //Moving Obstacle 10
        l2MO10.g();
      
      //Moving Platforms
      
        //Moving Platform 1
        l2MP1.g();
    
      //Set Speed
      originX -= s;
        
    
    //Set Reset Mechanism
    
      //If Player Touches Obstacle Or Moving Obstacle And Debug Mode Is Off
      if ((l2O1.tP == true || l2MO1.tP == true || l2MO2.tP == true || l2MO3.tP == true || l2MO4.tP == true || l2O2.tP == true || l2MO5.tP == true || l2MO6.tP == true || l2MO7.tP == true || l2MO8.tP == true || l2MO9.tP == true || l2MO10.tP == true) && dIO == false) {
        
        //Reset Level
        rL();
        
      }
      
      
    //Set Level Ending Mechanism
    if (l2G.tP == true) {
      
      //Reset Levels
      rL();
      
      //Go To Boss Scene
      cS = 6;
      
    }
    
  }
  
  
  /*--------*/
  
  //Boss Scene
  public void bS() {
    
    //Current Scene
    cS = 6;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //King Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("KEVIN MERANGUE: HAHAHA! I have got you now, detective! I just knew you would \ncome, since I have a secret informant who told me you were coming. Now \nyou are trapped in a machine which sends superheated pillars all  throughout it's chamers, \nso you are practically dead now. Enough wasting time, let's start the machine!", 120, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/

  //Level 3
  public void l3() {
    
    //Current Scene
    cS = 7;
    
    //Enivronment
    
      //Background
      eaM.b();
      
      //Ground
      eaM.gR();
    
    //Draw Player
    p.g();
      
    
    //Game Objects
    
      //Platforms
      
        //Platform 1
        l2P1.g();
        
      //Obstacles
      
        //Obstacle 1
        l3O1.g();
        
        //Obstacle 2
        l3O2.g();
        
      //Moving Obstacles
      
        //Moving Obstacle 1
        l3MO1.g();
        
        //Moving Obstacle 2
        l3MO2.g();
        
        //Moving Obstacle 3
        l3MO3.g();
        
        //Moving Obstacle 4
        l3MO4.g();
        
        //Moving Obstacle 5
        l3MO5.g();
        
        //Moving Obstacle 6
        l3MO6.g();
        
        //Moving Obstacle 7
        l3MO7.g();
        
        //Moving Obstacle 8
        l3MO8.g();
        
        //Moving Obstacle 9
        l3MO9.g();
        
        //Moving Obstacle 10
        l3MO10.g();
        
        //Moving Obstacle 11
        l3MO11.g();
    
      //Set Speed
      originX -= s;
        
      
      //Set Reset Mechanism
      
        //If Player Touches Obstacle And Debug Mode Is Off
        if ((l3O1.tP == true || l3O2.tP == true || l3MO1.tP == true || l3MO2.tP == true || l3MO3.tP == true || l3MO4.tP == true || l3MO5.tP == true || l3MO6.tP == true || l3MO7.tP == true || l3MO8.tP == true || l3MO9.tP == true || l3MO10.tP == true) && dIO == false) {
          
          //Reset Level
          rL();
          
        }
        
      //Set Ending Mechansim
      if (l3MO11.x <= -20000) {
        
        //Reset Level
        rL();
        
        //Go To Story Scene 3
        cS = 8;
        
      }
    
  }
  
  /*--------*/
  
  //Story Scene 3
  public void sS3() {
    
    //Current Scene
    cS = 8;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //Chef Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("MERANGUE: Come on! How could you survive my machine! Now it is out of power. Well, no matter, since the cake is still in a secure location, which no one knows but me and my most faithful assistants. HAHAHAHAHAAA!", 160, 150, 1090, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/
  
  //Story Scene 4
  public void sS4() {
    
    //Current Scene
    cS = 9;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //Chef Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("CHEF: That was a close encounter! Good job on beating Merangue! Unfortunately, you have a \nlot of work ahead of you if you want to reclaim the Royal Cake. According to Merangue only his most faithful assistants know where the cake is.", 160, 150, 1090, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/
  
  //Story Scene 5
  public void sS5() {
    
    //Current Scene
    cS = 10;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //Chef Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("Convieniently, just last week, people were scheduled for a trial as there is evidence they worked with Merange. However, the trial is scheduled for next week, so we need to investigate them for ourselves.", 160, 150, 1090, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/
  
  //Story Scene 6
  public void sS6() {
    
    //Current Scene
    cS = 11;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //Chef Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("In Futurian culture it is common to keep one's most prized and secretive possesions inside one hidden technological lockbox. We need to find these lockboxes and crack them open.", 160, 150, 1090, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/
  
  //Story Scene 7
  public void sS7() {
    
    //Current Scene
    cS = 12;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //Chef Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("Since you are the Royal Detective, you can search the homes of the accused. To keep track of the evidence you find, you can use your detective handbook (located in the top right corner of your screen).", 160, 150, 1090, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/
  
  //Story Scene 8
  public void sS8() {
    
    //Current Scene
    cS = 13;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //Chef Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("Each of these suspects lives in a rural area in the kingdom, which you will have to navigate to find their house. I will now teleport you the the first suspect's community. Good luck!", 160, 150, 1090, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/

  //Level 4
  public void l4() {
    
    //Current Scene
    cS = 14;
    
    //Enivronment
    
      //Background
      eaM.b();
      
      //Ground
      eaM.gR();
    
    //Draw Player
    p.g();
    
    
    //Game Objects
    
      //Platforms
      
        //Platform 1
        l4P1.g();
        
        //Platform 2
        l4P2.g();
        
        //Platform 3
        l4P3.g();
        
        //Platform 4
        l4P4.g();
        
        //Platform 6
        l4P6.g();
        
        //Platform 7
        l4P7.g();
        
        //Platform 8
        l4P8.g();
        
        //Platform 9
        l4P9.g();
        
        //Platform 10
        l4P10.g();
        
        //Platform 11
        l4P11.g();
        
        //Platform 12
        l4P12.g();
        
      //Obstacles
      
        //Obstacle 1
        l4O1.g();
        
        //Obstacle 2
        l4O2.g();
        
        //Obstacle 3
        l4O3.g();
        
        //Obstacle 4
        l4O4.g();
        
        //Obstacle 5
        l4O5.g();
        
        //Obstcle 6
        l4O6.g();
        
      //Moving Obstacles
      
        //Moving Obstacle 1
        l4MO1.g();
        
        //Moving Obstacle 2
        l4MO2.g();
        
        //Moving Obstacle 3
        l4MO3.g();
        
      //Platforms (That will display above obstacles)
        
        //Platform 5
        l4P5.g();
    
      //Set Speed
      originX -= s;
        
    
    //Set Reset Mechanism
    
      //If Player Touches Obstacle Or Moving Obstacle And Debug Mode Is Off
      if ((l4O1.tP == true || l4O2.tP == true || l4O3.tP == true || l4MO1.tP == true || l4MO2.tP == true || l4MO3.tP == true || l4O4.tP == true || l4O5.tP == true || l4O6.tP == true) && dIO == false) {
        
        //Reset Level
        rL();
        
      }
    
  }
  
  
  /*--------*/
  
  //End Story Scene
  public void eSS() {
    
    //Current Scene
    cS = 7;
    
    //Enivronment
    
      //Background
      background(211, 211, 211);
      
      
    //Cake
    
      //Icing
      
        //Second Layer
      
          //Setup
        
            //Outline - None
            noStroke();
          
            //Color - White
            fill(255, 255, 255);
          
          //Draw
          rect(600, 20, 100, 25);
      
        //First Layer
      
          //Setup
        
            //Outline - None
            noStroke();
          
            //Color - White
            fill(255, 0, 0);
          
          //Draw
          rect(600, 20, 100, 5);
        
      //Eatable Cake
      
        //Setup
        
          //Outline - None
          noStroke();
          
          //Color - White
          fill(210, 105, 30);
          
        //Draw
        rect(600, 45, 100, 40);
      
      
    //King Talking
    
      //Setup
      
        //Font
        textFont(calibria);
      
        //Size
        textSize(25);
        
        //Color
        fill(255, 0, 0);
        
      //Text
      text("KING: Congratulations, my faithful detective! You have exceeded all expectations by defeating \nMerangue and securing the Royal Cake, which I will now eat. Along with this, you sill be subtly awarded \nwith some Amazon Gift Card money, which you can use the following code for: \n\nW9TD-RZTUXR-KWAJ \n\nI am also happy to say, you are now promoted to be my Royal Minister! Thank you very much again \nfor saving our kingdom and my birthday!", 160, 150, 1090, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  /*--------*/
  
  //Reset Levels
  public void rL() {
    
    //Scenes Variables
    
    
      //All Scenes
      
        //Player
        
          //Coordinates
          
            //X
            p.x = 200;
            
            //Y
            p.y = 588;
            
          //Lightning Physics Engine
    
            //Gravity Pull
            p.gP = 4;
      
            //Jump Speed
            p.jS = 0;
      
            //Person On Gravity Pull boolean
            p.f = false;
      
            //Player On Platform Boolean
            p.oG = false;
      
          //Jump Meter
    
            //Loaded Boolean
            p.mL = false;
            
        //Origin
        
          //X
          originX = 0;
          
          //Y
          originY = 0;
            
            
      //Level 1
      
        //Platforms
        
          //Platform 1
          l1P1.r();
            
          //Platform 2
          l1P2.r();
            
          //Platform 3
          l1P3.r();
            
          //Platform 4
          l1P4.r();
            
          //Platform 5
          l1P5.r();
            
          //Platform 6
          l1P6.r();
            
          //Platform 7
          l1P7.r();
            
          //Platform 8
          l1P8.r();
            
          //Platform 9
          l1P9.r();
            
          //Platform 10
          l1P10.r();
            
          //Platform 11
          l1P11.r();
            
        //Obstacles
        
          //Obstacle 1
          l1O1.r();
            
          //Obstacle 2
          l1O2.r();
            
          //Obstacle 3
          l1O3.r();
            
          //Obstacle 4
          l1O4.r();
            
          //Obstacle 5
          l1O5.r();
            
          //Obstacle 6
          l1O6.r();
            
          //Obstacle 7
          l1O7.r();
            
          //Obstacle 8
          l1O8.r();
            
        //Moving Obstacles
        
          //Moving Obstacle 1
          l1MO1.r();
        
          //Moving Obstacle 2
          l1MO2.r();
            
          //Moving Obstacle 3
          l1MO3.r();
            
          //Moving Obstacle 4
          l1MO4.r();
            
          //Moving Obstacle 5
          l1MO5.r();
            
          //Moving Obstacle 6
          l1MO6.r();
            
          //Moving Obstacle 7
          l1MO7.r();
            
        //Moving Platforms
        
          //Moving Platform 1
          l1MP1.r();
            
          //Moving Platform 2
          l1MP2.r();
            
        //Gateway
        l1G.r();
    
    
      //Level 2
    
        //Platforms
        
          //Platform 1
          l2P1.r();
            
          //Platform 2
          l2P2.r();
            
          //Platform 3
          l2P3.r();
            
          //Platform 4
          l2P4.r();
            
        //Obstacles
        
          //Obstacle 1
          l2O1.r();
              
          //Obstacle 2
          l2O2.r();
              
        //Moving Obstacles
        
          //Moving Obstacle 1
          l2MO1.r();
            
          //Moving Obstacle 2
          l2MO2.r();
            
          //Moving Obstacle 3
          l2MO3.r();
            
          //Moving Obstacle 4
          l2MO4.r();
            
          //Moving Obstacle 5
          l2MO5.r();
            
          //Moving Obstacle 6
          l2MO6.r();
            
          //Moving Obstacle 7
          l2MO7.r();
            
          //Moving Obstacle 8
          l2MO8.r();
            
          //Moving Obstacle 9
          l2MO9.r();
            
          //Moving Obstacle 10
          l2MO10.r();
        
        //Moving Platforms
        
          //Moving Platform 1
          l2MP1.r();
            
        //Gateway
        
          //Coordinates
          l2G.r();
          
      
      //Level 3
      
        //Platforms
        
          //Platform 1
          l3P1.r();
              
        //Obstacles
        
          //Obstacle 1
          l3O1.r();
              
          //Obstacle 2
          l3O2.r();
              
        //Moving Obtacles
        
          //Moving Obstacle 1
          l3MO1.r();
            
          //Moving Obstacle 2
          l3MO2.r();
            
          //Moving Obstacle 3
          l3MO3.r();
            
          //Moving Obstacle 4
          l3MO4.r();
            
          //Moving Obstacle 5
          l3MO5.r();
            
          //Moving Obstacle 6
          l3MO6.r();
            
          //Moving Obstacle 7
          l3MO7.r();
            
          //Moving Obstacle 8
          l3MO8.r();
            
          //Moving Obstacle 9
          l3MO9.r();
            
          //Moving Obstacle 10
          l3MO10.r();
            
          //Moving Obstacle 11
          l3MO11.r();
    

      //Level 4
      
        //Platforms
        
          //Platform 1
          l4P1.r();
          
          //Platform 2
          l4P2.r();
          
          //Platform 3
          l4P3.r();
          
          //Platform 4
          l4P4.r();
          
          //Platform 5
          l4P5.r();
          
          //Platform 6
          l4P6.r();
          
          //Platform 7
          l4P7.r();
          
          //Platform 8
          l4P8.r();
          
          //Platform 9
          l4P9.r();
          
          //Platform 10
          l4P10.r();
          
          //Platform 11
          l4P11.r();
          
          //Platform 12
          l4P12.r();
          
        //Obstacles
        
          //Obstacle 1
          l4O1.r();
          
          //Obstacle 2
          l4O2.r();
          
          //Obstacle 3
          l4O3.r();
          
          //Obstacle 4
          l4O4.r();
          
          //Obstacle 5
          l4O5.r();
          
          //Obstacle 6
          l4O6.r();
        
      //Moving Obstacles
      
        //Moving Obstacle 1
        l4MO1.r();
        
        //Moving Obstacle 2
        l4MO2.r();
        
        //Moving Obstacle 3
        l4MO3.r();
    
  }
  
  /*--------*/
  
  //Set Scene
  public void sS() {
    cS = 14;
    //If Current Scene is 1
    if (cS == 1) {
      
      //Set Scene To Main Menu
      mm();
      
    }
    
    //If Current Scene is 2
    if (cS == 2) {
      
      //Set Scene To Main Menu
      sS1();
      
    }
    
    //If Current Scene is 3
    if (cS == 3) {
      
      //Set Scene To Main Menu
      sS2();
      
    }
    
    //If Current Scene is 4
    if (cS == 4) {
      
      //Set Scene To Level 1
      l1();
      
    }
    
    //If Current Scene is 5
    if (cS == 5) {
      
      //Set Scene To Level 2
      l2();
      
    }
    
    //If Current Scene is 6
    if (cS == 6) {
      
      //Set Scene To Boss Scene
      bS();
      
    }
    
    //If Current Scene is 7
    if (cS == 7) {
      
      //Set Scene To Level 3
      l3();
      
    }
    
    //If Current Scene is 8
    if (cS == 8) {
      
      //Set Scene To Story Scene 3
      sS3();
      
    }
    
    //If Current Scene is 9
    if (cS == 9) {
      
      //Go to Story Scene 4
      sS4();
      
    }
    
    //If Current Scene is 10
    if (cS == 10) {
      
      //Go to Story Scene 4
      sS5();
      
    }
    
    //If Current Scene is 11
    if (cS == 11) {
      
      //Go to Story Scene 6
      sS6();
      
    }
    
    //If Current Scene is 12
    if (cS == 12) {
      
      //Go to Story Scene 7
      sS7();
      
    }
    
    //If Current Scene is 13
    if (cS == 13) {
      
      //Go to Story Scene 8
      sS8();
      
    }
    
    //If Current Scene is 14
    if (cS == 14) {
      
      //Go to Level 4
      l4();
      
    }
    
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
  void g() {
    
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
            
          }
          
          //Else
          else {
            
            //Set Mouse Over Button boolean to false
            moB = false;
            
          }
      
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

/*--------------------------*/

/*Player*/
public class P {
  
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


//Constructor Method
P() {
  
  //Set Instances To Parameters
  
    //Coordinates
    
      //X
      x = 200;
      
      //Y
      y = 588;
      
    //Dimensions
    
      //Width
      w = 40;
      
      //Height
      h = 100;
      
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
  
}

//Methods

  //Generate
  void g() {
    
    //Draw
    
      //Body
    
        //Setup
      
          //Outline - None
          noStroke();
      
          //Color - Black
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
        y += p.gP;
      
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
      
  }
  
}

/*--------------------------*/

/*Platforms*/
public class PF {
  
//Instance Fields

  //Coordinates
  
    //X
    int x;
    
    //Y
    int y;
    
    //Original
    
      //X
      int oX;
      
      //Y
      int oY;
    
  //Dimensions
  
    //Width
    int w;
    
    //Height
    int h;
    
  //Player Touching Boolean
  boolean tP;


//Constructor
PF(int x, int y, int w, int h) {
  
  //Set Instances To Parameters
  
    //Coordinates
    
      //X
      this.x = originX + x;
      
      //Y
      this.y = originY + y;
      
      //Original
      
        //X
        this.oX = x;
        
        //Y
        this.oY = y;
      
    //Dimensions
    
      //Width
      this.w = w;
      
      //Height
      this.h = h;
    
    //Player Touching Boolean
    this.tP = false;
  
}


//Methods
  
  //Generate
  void g() {
    
    //Draw
    
      //Setup
      
        //Color - Black
        fill(0, 0, 0);
        
          //If In Desert Theme
          if (sM.cS == 14) {
            
            //Color - Yellow
            fill(238, 214, 175);
            
          }
        
        //Outline - None
        noStroke();
        
      //Rectangle
      rect(x, y, w, h); 
      
      
      //Update Location
      x = originX + oX;
      
      
      //Collisions
        
      //Side
         
        //If Right Side Of Player is Touching The Left Side of the Platform And D Key Is Pressed
        if ((p.x + p.w/2 == x) && ((p.y > y && p.y < y + h) || (p.y - 33 > y && p.y - 33 < y + h) || (p.y - 60 > y && p.y - 60 < y + h) || (p.y - 15 > y && p.y - 15 < y + h) || (p.y + 35 > y && p.y + 35 < y + h) || (p.y + 15 > y && p.y + 15 < y + h)) && dP == true) {
          
          //Set Speed To 0
          s = 0;
              
        }
        
        //If Left Side Of Player is Touching The Left Side of the Platform And A Key Is Pressed
        if ((p.x - p.w/2 == x + w) && ((p.y > y && p.y < y + h) || (p.y - 33 > y && p.y - 33 < y + h) || (p.y - 60 > y && p.y - 60 < y + h) || (p.y - 15 > y && p.y - 15 < y + h) || (p.y + 35 > y && p.y + 35 < y + h) || (p.y + 15 > y && p.y + 15 < y + h)) && aP == true) {
          
          //Set Speed To 0
          s = 0;
              
        }
        
      //Head
      
        //If Head Of Player is Touching The Bottom Of The Platform
        if (((p.y - 40 <= y + h) && (p.y - 40 >= y)) && ((p.x > x && p.x < x + w) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) || (p.x + p.w/2 > x && p.x + p.w/2 < x + w))) {
              
          //Set Jump Meter To Halfway
        
            //Meter Circle
          
              //X
              p.meCX = p.meX + 50;
            
          //Set Falling Boolean To True
          p.f = true;
              
        }
    
      
    //Landing Mechaic
    
      //Check if Player is on it
      if (p.y == y - 34 && p.x > x - p.w/2 && p.x < x + w + p.w/2) {
        
        //Set Resistant force to gravity
        p.y -= p.gP;
        
        //Set Player to not falling
        p.f = false;
        
        //Reset Jump
        
          //Reset Jump Meter
        
            //Meter Circle
          
              //X
              p.meCX = p.meX + 100;
              
                //Fix a bug that causes the meter circle to go one pixel beyond meter
                if (p.meCX == 121) {
                  
                  //Set it back to 120
                  p.meCX = 120;
                  
                }
            
            //Loaded Boolean
            p.mL = true; 
          
        
        //Set Player Touching Boolean to True
        tP = true;
        
      }
      
      //Else
      else {
      
        //Set Touching Player Boolean To False
        tP = false;
    
      }
    
  }
  
  /*--------*/
  
  //Reset
  public void r() {
    
    //Reset Coordinates
    
      //X
      x = oX;
      
      //Y
      y = oY;
    
  }
  
}


/*--------------------------*/

/*Obstacles*/
public class O {
  
//Instance Fields

  //Coordinates
  
    //X
    int x;
    
    //Y
    int y;
    
    //Original
    
      //X
      int oX;
      
      //Y
      int oY;
    
  //Dimensions
  
    //Width
    int w;
    
    //Height
    int h;
    
  //Touching Player Boolean
  boolean tP;
  
  //Is Pitfall Boolean
  boolean iP;


//Constructor Method
O(int x, int y, int w, int h, boolean iP) {
  
  //Set Instances To Parameters
  
    //Coordinates
    
      //X
      this.x = originX + x;
      
      //Y
      this.y = originY + y;
    
      //Original
      
        //X
        this.oX = x;
        
        //Y
        this.oY = y;
      
    //Dimensions
    
      //Width
      this.w = w;
      
      //Height
      this.h = h;
      
    //Touching PLayer Boolean
    this.tP = false;
    
    //Is Pitfall Boolean
    this.iP = iP;
  
}


//Methods
  
  //Generate
  public void g() {
    
    //Draw Rectangle
    
      //Setup
      
        //Color - Red
        fill(255, 0, 0);
        
        //If The Obstacle Is A Pitfall
        if (iP == true) {
          
          //Change The color to background (based on theme)
          
          
            //If in Castle Theme
            if (sM.cS == 4 || sM.cS == 5|| sM.cS == 7) {
              
              //Color - Grey
              fill(211, 211, 211);
              
            }
            
            //Else If in Deset Theme
            else if (sM.cS == 14) {
      
              //Color - Sky Blue
              fill(135, 206, 234);
              
            }
            
        }
        
        //Outline - None
        noStroke();
        
      //Draw
      rect(x, y, w, h);
      
      
    //Update Location
    x = originX + oX;
    
    
    //Check If Player is touching a obstacle
    if ((p.x + p.w/2 > x && p.x + p.w/2 < x + w) && (p.y > y && p.y < y + h) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) && (p.y > y && p.y < y + h) || (p.x > x && p.x < x + w) && (p.y + 34 > y && p.y + 34 < y + h) || (p.x > x && p.x < x + w) && (p.y - 34 > y && p.y - 34 < y + h) || (p.x + p.w/2 > x && p.x + p.w/2 < x + w) && (p.y - 34 > y && p.y - 34 < y + h) || (p.x + p.w/2 > x && p.x + p.w/2 < x + w) && (p.y + 34 > y && p.y + 34 < y + h) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) && (p.y - 34 > y && p.y - 34 < y + h) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) && (p.y + 34 > y && p.y + 34 < y + h)) {
      
      //Set Player Touching Boolean To True
      tP = true;
      
    }
    
    //Else
    else {
      
      //Set Player Touching Obstacle Boolean To False
      tP = false;
      
    }
    
  }
  
  /*--------*/
  
  //Reset
  public void r() {
    
    //Reset Coordinates
    
      //X
      x = oX;
      
      //Y
      y = oY;
      
    //Reset Touching Player Boolean
    tP = false;
    
  }
  
}


/*--------------------------*/


/*Environment Assets*/
public class EA {
  
//Instance Fields


//Constructor Method
EA() {
  
}


//Methods

  //Ground
  public void gR() {
    
    //Setup
      
      //Color - Dark Brown
      fill(160, 82, 45);
        
        //If In Desert Theme
        if (sM.cS == 14) {
            
          //Color - Yellow
          fill(238, 214, 175);
            
        }
      
      //Outline - None
      noStroke();
        
    //Draw
    rect(0, 627, 1300, 100);
    
  }
  
  /*--------*/
  
  //Background
  public void b() {
    
    //Setup
    
      //Variables
      
        //Starting Coordinates
      
          //X
          int bX = 130;
        
          //Y
          int bY = 0;
        
        //Dimensions
      
          //Background Brick Width
          int bBW = 130;
      
          //Background Brick Height
          int bBH = 65;
    
      //Bottom Layer
      
        //Color - Grey
        background(211, 211, 211);
    
      //Bricks
    
        //Color - Black
        stroke(0, 0, 0);
      
        //Thickness
        strokeWeight(3);
      
    //Generate
    
      //Brick Wall Loop
      while (bY <= 650) {
    
        //Brick Row Loop
        while (bX <= 1300) {
        
          //Draw Bricks
          
            //Vertically
          
              //Draw Top Brick Line
              line(bX, bY, bX, bY + 65);
         
              //Draw Bottom Brick Line
              line(bX - bBW/2, bY + bBH, bX - bBW/2, bY + bBH * 2);
          
            //Horizonatlly
          
              //Draw Line in between
              line(bX - 130, bY + bBH, bX + bBW, bY + bBH);
          
              //Draw Line Underneath
              line(bX - 130, bY + (bBH * 2), bX + bBW, bY + (bBH * 2));
        
          //Setup For Next Loop
          bX += 130;
  
        }
    
        //Setup For Next Loop
        
          //Reset X Value
          bX = 130;
          
          //Increase bY Value
          bY += 130;
      
      }
      
      
    //If In Desert Theme
    if (sM.cS == 14) {
      
      //Background - Sky Blue
      background(135, 206, 234);
      
    }
    
  }
  
}


/*--------------------------*/


/*Moving Obstacles*/
public class MO {
  
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
    
  //Movement
  
    //Speed
    
      //Set Speed
    
        //Coordinates
    
          //X
          int xS;
      
          //Y
          int yS;
      
      //Current Speed
    
        //Coordinates
        
          //X
          int xCS;
          
          //Y
          int yCS;
    
    //Original Coordinates
    
      //X
      int oX;
      
      int oY;
      
      //Original
      
        //X
        int oOX;
        
        //Y
        int oOY;
      
    //Destination Coordinates
    
      //X
      int mDX;
      
      //Y
      int mDY;
      
      //Original
      
        //X
        int oDX;
        
        //Y
        int oDY;
    
  //Touching Player Boolean
  boolean tP;


//Constructor Method
MO(int x, int y, int w, int h, int xS, int yS, int mDX, int mDY) {
  
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
      
    //Movement
  
      //Speed
    
        //Set Speed
    
          //Coordinates
    
            //X
            this.xS = xS;
      
            //Y
            this.yS = yS;
      
        //Current Speed
    
          //Coordinates
        
            //X
            this.xCS = 0;
          
            //Y
            this.yCS = 0;
    
    //Original Coordinates
    
      //X
      this.oX = x;
      
      //Y
      this.oY = y;
      
      //Original
      
        //X
        this.oOX = x;
        
        //Y
        this.oOY = y;
      
    //Movement Distance
    
      //X
      this.mDX = mDX;
      
      //Y
      this.mDY = mDY;
      
      //Original
      
        //X
        this.oDX = mDX;
        
        //Y
        this.oDY = mDY;
      
    //Touching PLayer Boolean
    this.tP = false;
  
}


//Methods
  
  //Generate
  public void g() {
    
    //Draw Rectangle
    
      //Setup
      
        //Color - Red
        fill(255, 0, 0);
        
        //Outline - None
        noStroke();
        
      //Draw
      rect(x, y, w, h);
      
    //Set To movement speed
    
      //Player Movement
      x -= s;
      
      //Original Coordinates
      
        //X
        oX -= s;
        
      //Destination Coordinates
      
        //X
        mDX -= s;
      
    
    //Animation
    
      //Set Actual Speed To Current Speed
      
        //X
        x += xCS;
        
        //Y
        y += yCS;
    
      //If At Starting Point
      if (x == oX && y == oY) {
      
        //Change To Speed
        
          //X
          xCS = xS;
          
          //Y
          yCS = yS;
      
      }
      
      //Else If At Destination Point
      if (x == mDX && y == mDY) {
      
        //Change To Negative Speed
        
          //X
          xCS = xS * -1;
          
          //Y
          yCS = yS * -1;
      
      }
    
    
    //Check If Player is touching a obstacle
    if ((p.x + p.w/2 > x && p.x + p.w/2 < x + w) && (p.y > y && p.y < y + h) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) && (p.y > y && p.y < y + h) || (p.x > x && p.x < x + w) && (p.y + 34 > y && p.y + 34 < y + h) || (p.x > x && p.x < x + w) && (p.y - 34 > y && p.y - 34 < y + h) || (p.x + p.w/2 > x && p.x + p.w/2 < x + w) && (p.y - 34 > y && p.y - 34 < y + h) || (p.x + p.w/2 > x && p.x + p.w/2 < x + w) && (p.y + 34 > y && p.y + 34 < y + h) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) && (p.y - 34 > y && p.y - 34 < y + h) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) && (p.y + 34 > y && p.y + 34 < y + h)) {
      
      //Set Player Touching Boolean To True
      tP = true;
      
    }
    
    //Else
    else {
      
      //Set Player Touching Obstacle Boolean To False
      tP = false;
      
    }
    
  }
  
  /*--------*/
  
  //Reset
  public void r() {
    
    //Coordinate Varaibles
    
      //Reset Original Coordinates
      
        //X
        oX = oOX;
        
        //Y
        oY = oOY;
        
      //Set Starting Coordinates to Original Coordinates
      
        //X
        x = oX;
        
        //Y
        y = oY;
        
      //Reset Destination Coordinates
      
        //X
        mDX = oDX;
        
        //Y
        mDY = oDY;
      
    //Set Current Speed Variables to 0
    
      //X
      xCS = 0;
      
      //Y
      yCS = 0;
      
    //Set Touching Player Boolean to false
    tP = false;
    
  }
  
}


/*--------------------------*/


/*Moving Platforms*/
public class MPF {
  
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
    
  //Movement
  
    //Speed
    
      //Set Speed
    
        //Coordinates
    
          //X
          int xS;
      
          //Y
          int yS;
      
      //Current Speed
    
        //Coordinates
        
          //X
          int xCS;
          
          //Y
          int yCS;
    
    //Original Coordinates
    
      //X
      int oX;
      
      int oY;
      
      //Original
      
        //X
        int oOX;
        
        //Y
        int oOY;
      
    //Destination Coordinates
    
      //X
      int mDX;
      
      //Y
      int mDY;
      
      //Original
      
        //X
        int oDX;
        
        //Y
        int oDY;
    
  //Player Touching Boolean
  boolean tP;
  
  //Collision Reset Variables
  
    //X
    int cRX;
    
    //Y
    int cRY;


//Constructor
MPF(int x, int y, int w, int h, int xS, int yS, int mDX, int mDY) {
  
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
      
    //Movement
  
      //Speed
    
        //Set Speed
    
          //Coordinates
    
            //X
            this.xS = xS;
      
            //Y
            this.yS = yS;
      
        //Current Speed
    
          //Coordinates
        
            //X
            this.xCS = 0;
          
            //Y
            this.yCS = 0;
    
    //Original Coordinates
    
      //X
      this.oX = x;
      
      this.oY = y;
      
      //Original
      
        //X
        this.oOX = x;
        
        //Y
        this.oOY = y;
      
    //Movement Distance
    
      //X
      this.mDX = mDX;
      
      //Y
      this.mDY = mDY;
      
      //Original
      
        //X
        this.oDX = mDX;
        
        //Y
        this.oDY = mDY;
    
    //Player Touching Boolean
    this.tP = false;
  
    //Collision Reset Variables
  
      //X
      this.cRX = x;
    
      //Y
      this.cRY = y;
  
}


//Methods
  
  //Generate
  void g() {
    
    //Draw
    
      //Setup
      
        //Color - Black
        fill(0, 0, 0);
        
        //Outline - None
        noStroke();
        
      //Rectangle
      rect(x, y, w, h); 
      
    //Set To Speed
    x -= s;
    
      //Original Coordinates
      
        //X
        oX -= s;
        
      //Destination Coordinates
      
        //X
        mDX -= s;
      
    
    //Animation
    
      //Set Actual Speed To Current Speed
      
        //X
        x += xCS;
        
        //Y
        y += yCS;
        
        //Collision Reset Coordinates
        
          //X
          cRX += xCS;
          
          //Y
          cRY += yCS;
    
      //If At Starting Point
      if (x == oX && y == oY) {
      
        //Change To Speed
        
          //X
          xCS = xS;
          
          //Y
          yCS = yS;
      
      }
      
      //Else If At Destination Point
      if (x == mDX && y == mDY) {
      
        //Change To Negative Speed
        
          //X
          xCS = xS * -1;
          
          //Y
          yCS = yS * -1;
      
      }
      
      
    //Collisions
        
      //Side
         
        //If Right Side Of Player is Touching The Left Side of the Platform And D Key Is Pressed
        if ((p.x + p.w/2 == x) && ((p.y > y && p.y < y + h) || (p.y - 33 > y && p.y - 33 < y + h) || (p.y - 60 > y && p.y - 60 < y + h) || (p.y - 15 > y && p.y - 15 < y + h) || (p.y + 33 > y && p.y + 33 < y + h) || (p.y + 15 > y && p.y + 15 < y + h))) {
          
          //Set Speed To 0
          s = 0;
          
        }
        
        //If Left Side Of Player is Touching The Left Side of the Platform And A Key Is Pressed
        if ((p.x - p.w/2 == x + w) && ((p.y > y && p.y < y + h) || (p.y - 33 > y && p.y - 33 < y + h) || (p.y - 60 > y && p.y - 60 < y + h) || (p.y - 15 > y && p.y - 15 < y + h) || (p.y + 33 > y && p.y + 33 < y + h) || (p.y + 15 > y && p.y + 15 < y + h))) {
          
          //Set Speed To 0
          s = 0;
              
        }
        
      //Head
      
        //If Head Of Player is Touching The Bottom Of The Platform
        if ((p.y - 40 == y - h) && ((p.x > x && p.x < x + w) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) || (p.x + p.w/2 > x && p.x + p.w/2 < x + w))) {
              
          //Set Jump Meter To Halfway
        
            //Meter Circle
          
              //X
              p.meCX = p.meX + 50;
            
          //Set Falling Boolean To True
          p.f = true;
              
        }
        
      
    //Landing Mechaic
    
      //Check if Player is on it
      if (p.y == y - 34 && p.x > x - p.w/2 && p.x < x + w + p.w/2) {
        
        //Set Resistant force to gravity
        p.y -= p.gP;
        
        //Set Player to not falling
        p.f = false;
        
        //Make Player Move With Platform
        s = xCS;
        
        //Reset Jump Meter
        
          //Meter Circle
          
            //X
            p.meCX = p.meX + 100;
            
          //Loaded Boolean
          p.mL = true;
        
        //Set Player Touching Boolean to True
        tP = true;
        
      }
      
      //Else
      else {
      
        //Set Touching Player Boolean To False
        tP = false;
    
      }
    
  }
  
  /*--------*/
  
  //Reset
  public void r() {
    
    //Coordinate Varaibles
    
      //Reset Original Coordinates
      
        //X
        oX = oOX;
        
        //Y
        oY = oOY;
        
      //Set Starting Coordinates to Original Coordinates
      
        //X
        x = oX;
        
        //Y
        y = oY;
        
      //Reset Destination Coordinates
      
        //X
        mDX = oDX;
        
        //Y
        mDY = oDY;
      
    //Set Current Speed Variables to 0
    
      //X
      xCS = 0;
      
      //Y
      yCS = 0;
      
    //Set Touching Player Boolean to false
    tP = false;
    
  }
  
}


/*--------------------------*/


/*Gateways*/
public class G {
  
//Instance Fields

  //Coordinates
  
    //X
    int x;
    
    //Y
    int y;
    
    //Original
    
      //X
      int oX;
      
      //Y
      int oY;
    
  //Dimensions
  
    //Width
    int w;
    
    //Height
    int h;
    
  //Touching Player Boolean
  boolean tP;


//Constructor Method
G(int x, int y, int w, int h) {
  
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
      this.w = w;
      
      //Height
      this.h = h;
      
    //Touching PLayer Boolean
    this.tP = false;
  
}


//Methods
  
  //Generate
  public void g() {
    
    //Draw Rectangle
    
      //Setup
      
        //Color - Red
        fill(0, 255, 0);
        
        //Outline - None
        noStroke();
        
      //Draw
      rect(x, y, w, h);
      
    //Set To movement speed
    x -= s;
    
    //Check If Player is touching a obstacle
    if ((p.x + p.w/2 > x && p.x + p.w/2 < x + w) && (p.y > y && p.y < y + h) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) && (p.y > y && p.y < y + h) || (p.x > x && p.x < x + w) && (p.y + 34 > y && p.y + 34 < y + h) || (p.x > x && p.x < x + w) && (p.y - 34 > y && p.y - 34 < y + h) || (p.x + p.w/2 > x && p.x + p.w/2 < x + w) && (p.y - 34 > y && p.y - 34 < y + h) || (p.x + p.w/2 > x && p.x + p.w/2 < x + w) && (p.y + 34 > y && p.y + 34 < y + h) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) && (p.y - 34 > y && p.y - 34 < y + h) || (p.x - p.w/2 > x && p.x - p.w/2 < x + w) && (p.y + 34 > y && p.y + 34 < y + h) || (x > p.x - p.w/2 && x < p.x + p.w/2) && (y > p.y - 34 && y < p.y + 34)) {
      
      //Set Player Touching Boolean To True
      tP = true;
      
    }
    
    //Else
    else {
      
      //Set Player Touching Obstacle Boolean To False
      tP = false;
      
    }
    
  }
  
  /*--------*/
  
  //Reset
  public void r() {
    
    //Reset Coordinates
    
      //X
      x = oX;
      
      //Y
      y = oY;
      
    //Reset Touching Player Boolean
    tP = false;
    
  }
  
}
