/****Ashwath's Birthday Present****/

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
    
    
//Main Menu

  //Buttons
  
    //Play Button
    B PB;
    
    
//Story Scene 1

  //Buttons
  
    //Next Button
    B nB;

  
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
  
  
//Main Menu

  //Buttons
  
    //Play Button
    PB = new B(500, 300, 280, 75, "Play", 60, 585, 355);
    

//Story Scene 1

  //Buttons
  
    //Next Button
    nB = new B(520, 550, 200, 50, "Next", 30, 590, 580);
  
  
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
    l1O1 = new O(600, 620, 1375, 30);
    
    //Obstacle 2
    l1O2 = new O(2175, 620, 225, 30);
    
    //Obstacle 3
    l1O3 = new O(2300, 260, 30, 600);
    
    //Obstacle 4
    l1O4 = new O(2650, 620, 175, 300);
    
    //Obstacle 5
    l1O5 = new O(2725, 0, 30, 275);
    
    //Obstacle 6
    l1O6 = new O(3075, 620, 200, 30);
    
    //Obstacle 7
    l1O7 = new O(3275, 300, 50, 500);
    
    //Obstacle 8
    l1O8 = new O(3325, 620, 3325, 30);
    
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
    l2O1 = new O(750, 620, 1375, 30);
    
    //Obstacle 2
    l2O2 = new O(2625, 620, 1375, 30);
    
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
    l3O1 = new O(1300, 0, 2000, 650);
    
    //Obstacle 2
    l3O2 = new O(-2000, 0, 2000, 650);
    
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


//If In Story Scene 3
if (sM.cS == 7) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 1
    sM.cS = 1;
    
    //Set Mouse Over Button Boolean To False
    nB.moB = false;
    
  }
  
}


//If In Boss Scene
if (sM.cS == 1000) {

  //If Next Button Is Pressed
  if (nB.moB == true) {
    
    //Set Scene To 6
    sM.cS = 6;
    
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
        
      //Gateway
      l1G.g();
      
    
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
        
      //Gateway
      l2G.g();
    
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
      cS = 1000;
      
    }
    
  }
  
  /*--------*/

  //Level 3
  public void l3() {
    
    //Current Scene
    cS = 6;
    
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
        
      
      //Set Reset Mechanism
      
        //If Player Touches Obstacle And Debug Mode Is Off
        if ((l3O1.tP == true || l3MO1.tP == true || l3MO2.tP == true || l3MO3.tP == true || l3MO4.tP == true || l3MO5.tP == true || l3MO6.tP == true || l3MO7.tP == true || l3MO8.tP == true || l3MO9.tP == true || l3MO10.tP == true) && dIO == false) {
          
          //Reset Level
          rL();
          
        }
        
      //Set Ending Mechansim
      if (l3MO11.x <= -20000) {
        
        //Reset Level
        rL();
        
        //Go To Story Scene 3
        cS = 7;
        
      }
    
  }
  
  
  /*--------*/
  
  //Story Scene 3
  public void sS3() {
    
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
      text("KING: Congratulations, my faithful detective! You have exceeded all expectations by defeating \nMerangue and securing the Royal Cake, which I will now eat. Along with this, you sill be subtly awarded \nwith some Amazon Gift Card money, which you can use the following code for: \n\nW9TD-RZTUXR-KWAJ \n\nI am also happy to say, you are now promoted to be my Royal Minister! Thank you very much again \nfor saving our kingdom and my birthday!", 120, 150);
      
      
      //Buttons
      
        //Next Button
        nB.g();
    
  }
  
  
  /*--------*/
  
  //Boss Scene
  public void bS() {
    
    //Current Scene
    cS = 1000;
    
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
      text("KEVIN MERANGUE: HAHAHA! I have got you now, detective! I just knew you would \ncome, since that 'chef' that led you here was actually and assistant of mine. Now you are \ntrapped in a machine which sends superheated pillars all  throughout it's chamers, \nso you are practically dead now. Enough wasting time, let's start the machine!", 120, 150);
      
      
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
            
            
      //Level 1
      
        //Platforms
        
          //Platform 1
            
            //Coordinates
            
              //X
              l1P1.x = 600;
            
              //Y
              l1P1.y = 554;
            
          //Platform 2
          
            //X
            l1P2.x = 1100;
            
            //Y
            l1P2.y = 374;
            
          //Platform 3
          
            //X
            l1P3.x = 1350;
            
            //Y
            l1P3.y = 478;
            
          //Platform 4
          
            //X
            l1P4.x = 1975;
            
            //Y
            l1P4.y = 398;
            
          //Platform 5
          
            //X
            l1P5.x = 2400;
            
            //Y
            l1P5.y = 278;
            
          //Platform 6
          
            //X
            l1P6.x = 2825;
            
            //Y
            l1P6.y = 458;
            
          //Platform 7
          
            //X
            l1P7.x = 3325;
            
            //Y
            l1P7.y = 318;
            
          //Platform 8
          
            //X
            l1P8.x = 3950;
            
            //Y
            l1P8.y = 518;
            
          //Platform 9
          
            //X
            l1P9.x = 4200;
            
            //Y
            l1P9.y = 382;
            
          //Platform 10
          
            //X
            l1P10.x = 4450;
            
            //Y
            l1P10.y = 218;
            
            //Platform 11
          
            //X
            l1P11.x = 6650;
            
            //Y
            l1P11.y = 382;
            
        //Obstacles
        
          //Obstacle 1
            
            //Coordinates
            
              //X
              l1O1.x = 600;
            
              //Y
              l1O1.y = 620;
              
            //Touching Player Boolean
            l1O1.tP = false;
            
          //Obstacle 2
            
            //Coordinates
            
              //X
              l1O2.x = 2175;
            
              //Y
              l1O2.y = 620;
              
            //Touching Player Boolean
            l1O2.tP = false;
            
          //Obstacle 3
            
            //Coordinates
            
              //X
              l1O3.x = 2300;
            
              //Y
              l1O3.y = 260;
              
            //Touching Player Boolean
            l1O3.tP = false;
            
          //Obstacle 4
            
            //Coordinates
            
              //X
              l1O4.x = 2650;
            
              //Y
              l1O4.y = 620;
              
            //Touching Player Boolean
            l1O4.tP = false;
            
          //Obstacle 5
          
            //Coordinates
          
              //X
              l1O5.x = 2725;
            
              //Y
              l1O5.y = 0;
              
            //Touching Player Boolean
            l1O5.tP = false;
            
          //Obstacle 6
          
            //Coordinates
          
              //X
              l1O6.x = 3075;
            
              //Y
              l1O6.y = 620;
              
            //Touching Player Boolean
            l1O6.tP = false;
            
          //Obstacle 7
          
            //Coordinates
          
              //X
              l1O7.x = 3275;
            
              //Y
              l1O7.y = 300;
              
            //Touching Player Boolean
            l1O7.tP = false;
            
          //Obstacle 8
          
            //Coordinates
          
              //X
              l1O8.x = 3325;
            
              //Y
              l1O8.y = 620;
              
            //Touching Player Boolean
            l1O8.tP = false;
            
        //Moving Obstacles
        
          //Moving Obstacle 1
            
            //Coordinates
          
              //X
              l1MO1.x = 3500;
            
              //Y
              l1MO1.y = 100;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l1MO1.oX = 3500;
            
                //Y
                l1MO1.oY = 100;
                
              //Destination Coordinates
          
                //X
                l1MO1.mDX = 3500;
            
                //Y
                l1MO1.mDY = 500;
                
            //Current Speed
              
              //X
              l1MO1.xCS = 0;
                
              //Y
              l1MO1.yCS = 0;
              
            //Touching Player Boolean
            l1MO1.tP = false;
        
          //Moving Obstacle 2
            
            //Coordinates
          
              //X
              l1MO2.x = 3600;
            
              //Y
              l1MO2.y = 50;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l1MO2.oX = 3600;
            
                //Y
                l1MO2.oY = 50;
                
              //Destination Coordinates
          
                //X
                l1MO2.mDX = 3600;
            
                //Y
                l1MO2.mDY = 400;
                
            //Current Speed
              
              //X
              l1MO2.xCS = 0;
                
              //Y
              l1MO2.yCS = 0;
              
            //Touching Player Boolean
            l1MO2.tP = false;
            
          //Moving Obstacle 3
            
            //Coordinates
          
              //X
              l1MO3.x = 3700;
            
              //Y
              l1MO3.y = 100;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l1MO3.oX = 3700;
            
                //Y
                l1MO3.oY = 100;
                
              //Destination Coordinates
          
                //X
                l1MO3.mDX = 3700;
            
                //Y
                l1MO3.mDY = 500;
                
            //Current Speed
              
              //X
              l1MO3.xCS = 0;
                
              //Y
              l1MO3.yCS = 0;
              
            //Touching Player Boolean
            l1MO3.tP = false;
            
          //Moving Obstacle 4
            
            //Coordinates
          
              //X
              l1MO4.x = 3800;
            
              //Y
              l1MO4.y = 25;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l1MO4.oX = 3800;
            
                //Y
                l1MO4.oY = 25;
                
              //Destination Coordinates
          
                //X
                l1MO4.mDX = 3800;
            
                //Y
                l1MO4.mDY = 405;
                
            //Current Speed
              
              //X
              l1MO4.xCS = 0;
                
              //Y
              l1MO4.yCS = 0;
              
            //Touching Player Boolean
            l1MO4.tP = false;
            
          //Moving Obstacle 5
            
            //Coordinates
          
              //X
              l1MO5.x = 4130;
            
              //Y
              l1MO5.y = 25;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l1MO5.oX = 4130;
            
                //Y
                l1MO5.oY = 25;
                
              //Destination Coordinates
          
                //X
                l1MO5.mDX = 4130;
            
                //Y
                l1MO5.mDY = 555;
                
            //Current Speed
              
              //X
              l1MO5.xCS = 0;
                
              //Y
              l1MO5.yCS = 0;
              
            //Touching Player Boolean
            l1MO5.tP = false;
            
          //Moving Obstacle 6
            
            //Coordinates
          
              //X
              l1MO6.x = 4380;
            
              //Y
              l1MO6.y = 10;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l1MO6.oX = 4380;
            
                //Y
                l1MO6.oY = 10;
                
              //Destination Coordinates
          
                //X
                l1MO6.mDX = 4380;
            
                //Y
                l1MO6.mDY = 450;
                
            //Current Speed
              
              //X
              l1MO6.xCS = 0;
                
              //Y
              l1MO6.yCS = 0;
              
            //Touching Player Boolean
            l1MO6.tP = false;
            
          //Moving Obstacle 7
            
            //Coordinates
          
              //X
              l1MO7.x = 5080;
            
              //Y
              l1MO7.y = 10;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l1MO7.oX = 5080;
            
                //Y
                l1MO7.oY = 10;
                
              //Destination Coordinates
          
                //X
                l1MO7.mDX = 5080;
            
                //Y
                l1MO7.mDY = 450;
                
            //Current Speed
              
              //X
              l1MO7.xCS = 0;
                
              //Y
              l1MO7.yCS = 0;
              
            //Touching Player Boolean
            l1MO7.tP = false;
            
        //Moving Platforms
        
          //Moving Platform 1
            
            //Coordinates
          
              //X
              l1MP1.x = 4680;
            
              //Y
              l1MP1.y = 250;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l1MP1.oX = 4680;
            
                //Y
                l1MP1.oY = 250;
                
              //Destination Coordinates
          
                //X
                l1MP1.mDX = 5480;
            
                //Y
                l1MP1.mDY = 250;
                
            //Current Speed
              
              //X
              l1MP1.xCS = 0;
                
              //Y
              l1MP1.yCS = 0;
              
            //Touching Player Boolean
            l1MP1.tP = false;
            
          //Moving Platform 2
            
            //Coordinates
          
              //X
              l1MP2.x = 6380;
            
              //Y
              l1MP2.y = 350;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l1MP2.oX = 6380;
            
                //Y
                l1MP2.oY = 350;
                
              //Destination Coordinates
          
                //X
                l1MP2.mDX = 5580;
            
                //Y
                l1MP2.mDY = 350;
                
            //Current Speed
              
              //X
              l1MP2.xCS = 0;
                
              //Y
              l1MP2.yCS = 0;
              
            //Touching Player Boolean
            l1MP2.tP = false;
            
        //Gateway
          
          //Coordinates
          
            //X
            l1G.x = 6850;
            
            //Y
            l1G.y = 182;
    
    
      //Level 2
    
        //Platforms
        
          //Platform 1
          
            //X
            l2P1.x = 500;
            
            //Y
            l2P1.y = 478;
            
          //Platform 2
          
            //X
            l2P2.x = 2125;
            
            //Y
            l2P2.y = 418;
            
          //Platform 3
          
            //X
            l2P3.x = 2900;
            
            //Y
            l2P3.y = 318;
            
          //Platform 4
          
            //X
            l2P4.x = 2900;
            
            //Y
            l2P4.y = 602;
            
        //Obstacles
        
          //Obstacle 1
            
            //Coordinates
            
              //X
              l2O1.x = 750;
            
              //Y
              l2O1.y = 620;
              
          //Obstacle 2
            
            //Coordinates
            
              //X
              l2O2.x = 2625;
            
              //Y
              l2O2.y = 620;
              
        //Moving Obstacles
        
          //Moving Obstacle 1
            
            //Coordinates
          
              //X
              l2MO1.x = 900;
            
              //Y
              l2MO1.y = 100;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO1.oX = 900;
            
                //Y
                l2MO1.oY = 100;
                
              //Destination Coordinates
          
                //X
                l2MO1.mDX = 900;
            
                //Y
                l2MO1.mDY = 500;
                
            //Current Speed
              
              //X
              l2MO1.xCS = 0;
                
              //Y
              l2MO1.yCS = 0;
              
            //Touching Player Boolean
            l2MO1.tP = false;
            
        //Moving Obstacle 2
            
            //Coordinates
          
              //X
              l2MO2.x = 1266;
            
              //Y
              l2MO2.y = 500;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO2.oX = 1266;
            
                //Y
                l2MO2.oY = 500;
                
              //Destination Coordinates
          
                //X
                l2MO2.mDX = 1266;
            
                //Y
                l2MO2.mDY = 100;
                
            //Current Speed
              
              //X
              l2MO2.xCS = 0;
                
              //Y
              l2MO2.yCS = 0;
              
            //Touching Player Boolean
            l2MO2.tP = false;
            
        //Moving Obstacle 3
            
            //Coordinates
          
              //X
              l2MO3.x = 1632;
            
              //Y
              l2MO3.y = 240;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO3.oX = 1632;
            
                //Y
                l2MO3.oY = 240;
                
              //Destination Coordinates
          
                //X
                l2MO3.mDX = 1632;

                //Y
                l2MO3.mDY = 500;
                
            //Current Speed
              
              //X
              l2MO3.xCS = 0;
                
              //Y
              l2MO3.yCS = 0;
              
            //Touching Player Boolean
            l2MO3.tP = false;
            
          //Moving Obstacle 4
            
            //Coordinates
          
              //X
              l2MO4.x = 2700;
            
              //Y
              l2MO4.y = 100;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO4.oX = 2700;
            
                //Y
                l2MO4.oY = 100;
                
              //Destination Coordinates
          
                //X
                l2MO4.mDX = 2700;
            
                //Y
                l2MO4.mDY = 500;
                
            //Current Speed
              
              //X
              l2MO4.xCS = 0;
                
              //Y
              l2MO4.yCS = 0;
              
            //Touching Player Boolean
            l2MO4.tP = false;
            
          //Moving Obstacle 5
            
            //Coordinates
          
              //X
              l2MO5.x = 3000;
            
              //Y
              l2MO5.y = 60;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO5.oX = 3000;
            
                //Y
                l2MO5.oY = 60;
                
              //Destination Coordinates
          
                //X
                l2MO5.mDX = 3000;
            
                //Y
                l2MO5.mDY = 600;
                
            //Current Speed
              
              //X
              l2MO5.xCS = 0;
                
              //Y
              l2MO5.yCS = 0;
              
            //Touching Player Boolean
            l2MO5.tP = false;
            
          //Moving Obstacle 6
            
            //Coordinates
          
              //X
              l2MO6.x = 3200;
            
              //Y
              l2MO6.y = 50;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO6.oX = 3200;
            
                //Y
                l2MO6.oY = 50;
                
              //Destination Coordinates
          
                //X
                l2MO6.mDX = 3200;
            
                //Y
                l2MO6.mDY = 600;
                
            //Current Speed
              
              //X
              l2MO6.xCS = 0;
                
              //Y
              l2MO6.yCS = 0;
              
            //Touching Player Boolean
            l2MO6.tP = false;
            
          //Moving Obstacle 7
            
            //Coordinates
          
              //X
              l2MO7.x = 3400;
            
              //Y
              l2MO7.y = 50;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO7.oX = 3400;
            
                //Y
                l2MO7.oY = 50;
                
              //Destination Coordinates
          
                //X
                l2MO7.mDX = 3400;
            
                //Y
                l2MO7.mDY = 600;
                
            //Current Speed
              
              //X
              l2MO7.xCS = 0;
                
              //Y
              l2MO7.yCS = 0;
              
            //Touching Player Boolean
            l2MO7.tP = false;
            
          //Moving Obstacle 8
            
            //Coordinates
          
              //X
              l2MO8.x = 3600;
            
              //Y
              l2MO8.y = 50;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO8.oX = 3600;
            
                //Y
                l2MO8.oY = 50;
                
              //Destination Coordinates
          
                //X
                l2MO8.mDX = 3600;
            
                //Y
                l2MO8.mDY = 600;
                
            //Current Speed
              
              //X
              l2MO8.xCS = 0;
                
              //Y
              l2MO8.yCS = 0;
              
            //Touching Player Boolean
            l2MO8.tP = false;
            
          //Moving Obstacle 9
            
            //Coordinates
          
              //X
              l2MO9.x = 3800;
            
              //Y
              l2MO9.y = 50;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO9.oX = 3800;
            
                //Y
                l2MO9.oY = 50;
                
              //Destination Coordinates
          
                //X
                l2MO9.mDX = 3800;
            
                //Y
                l2MO9.mDY = 600;
                
            //Current Speed
              
              //X
              l2MO9.xCS = 0;
                
              //Y
              l2MO9.yCS = 0;
              
            //Touching Player Boolean
            l2MO9.tP = false;
            
          //Moving Obstacle 10
            
            //Coordinates
          
              //X
              l2MO10.x = 4000;
            
              //Y
              l2MO10.y = 50;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MO10.oX = 4000;
            
                //Y
                l2MO10.oY = 50;
                
              //Destination Coordinates
          
                //X
                l2MO10.mDX = 4000;
            
                //Y
                l2MO10.mDY = 600;
                
            //Current Speed
              
              //X
              l2MO10.xCS = 0;
                
              //Y
              l2MO10.yCS = 0;
              
            //Touching Player Boolean
            l2MO10.tP = false;
        
        //Moving Platforms
        
          //Moving Platform 1
            
            //Coordinates
          
              //X
              l2MP1.x = 750;
            
              //Y
              l2MP1.y = 318;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l2MP1.oX = 750;
            
                //Y
                l2MP1.oY = 318;
                
              //Destination Coordinates
          
                //X
                l2MP1.mDX = 2000;
            
                //Y
                l2MP1.mDY = 318;
                
            //Current Speed
              
              //X
              l2MP1.xCS = 0;
                
              //Y
              l2MP1.yCS = 0;
              
            //Touching Player Boolean
            l2MP1.tP = false;
            
        //Gateway
        
          //Coordinates
          
            //X
            l2G.x = 3200;
            
            //Y
            l2G.y = 580;
            
          //Touching Boolean
          l2G.tP = false;
          
      
      //Level 3
      
        //Platforms
        
          //Platform 1
            
            //Coordinates
            
              //X
              l3P1.x = 600;
            
              //Y
              l3P1.y = 554;
              
        //Obstacles
        
          //Obstacle 1
          
            //Coordinates
            
              //X
              l3O1.x = 1300;
              
              //Y
              l3O1.y = 0;
              
          //Obstacle 2
          
            //Coordinates
            
              //X
              l3O2.x = -2000;
              
              //Y
              l3O2.y = 0;
              
        //Moving Obtacles
        
          //Moving Obstacle 1
            
            //Coordinates
          
              //X
              l3MO1.x = 1400;
            
              //Y
              l3MO1.y = 500;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO1.oX = 1400;
            
                //Y
                l3MO1.oY = 500;
                
              //Destination Coordinates
          
                //X
                l3MO1.mDX = -5000;
            
                //Y
                l3MO1.mDY = 500;
                
            //Current Speed
              
              //X
              l3MO1.xCS = 0;
                
              //Y
              l3MO1.yCS = 0;
              
            //Touching Player Boolean
            l3MO1.tP = false;
            
          //Moving Obstacle 2
            
            //Coordinates
          
              //X
              l3MO2.x = 1800;
            
              //Y
              l3MO2.y = 630;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO2.oX = 1800;
            
                //Y
                l3MO2.oY = 630;
                
              //Destination Coordinates
          
                //X
                l3MO2.mDX = -5000;
            
                //Y
                l3MO2.mDY = 630;
                
            //Current Speed
              
              //X
              l3MO2.xCS = 0;
                
              //Y
              l3MO2.yCS = 0;
              
            //Touching Player Boolean
            l3MO2.tP = false;
            
          //Moving Obstacle 3
            
            //Coordinates
          
              //X
              l3MO3.x = 2200;
            
              //Y
              l3MO3.y = 350;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO3.oX = 2200;
            
                //Y
                l3MO3.oY = 350;
                
              //Destination Coordinates
          
                //X
                l3MO3.mDX = -5000;
            
                //Y
                l3MO3.mDY = 350;
                
            //Current Speed
              
              //X
              l3MO3.xCS = 0;
                
              //Y
              l3MO3.yCS = 0;
              
            //Touching Player Boolean
            l3MO3.tP = false;
            
          //Moving Obstacle 4
            
            //Coordinates
          
              //X
              l3MO4.x = 2600;
            
              //Y
              l3MO4.y = 280;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO4.oX = 2600;
            
                //Y
                l3MO4.oY = 280;
                
              //Destination Coordinates
          
                //X
                l3MO4.mDX = -5000;
            
                //Y
                l3MO4.mDY = 280;
                
            //Current Speed
              
              //X
              l3MO4.xCS = 0;
                
              //Y
              l3MO4.yCS = 0;
              
            //Touching Player Boolean
            l3MO4.tP = false;
            
          //Moving Obstacle 5
            
            //Coordinates
          
              //X
              l3MO5.x = 3000;
            
              //Y
              l3MO5.y = 480;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO5.oX = 3000;
            
                //Y
                l3MO5.oY = 480;
                
              //Destination Coordinates
          
                //X
                l3MO5.mDX = -5000;
            
                //Y
                l3MO5.mDY = 480;
                
            //Current Speed
              
              //X
              l3MO5.xCS = 0;
                
              //Y
              l3MO5.yCS = 0;
              
            //Touching Player Boolean
            l3MO5.tP = false;
            
          //Moving Obstacle 6
            
            //Coordinates
          
              //X
              l3MO6.x = 3400;
            
              //Y
              l3MO6.y = 390;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO6.oX = 3400;
            
                //Y
                l3MO6.oY = 390;
                
              //Destination Coordinates
          
                //X
                l3MO6.mDX = -5000;
            
                //Y
                l3MO6.mDY = 390;
                
            //Current Speed
              
              //X
              l3MO6.xCS = 0;
                
              //Y
              l3MO6.yCS = 0;
              
            //Touching Player Boolean
            l3MO6.tP = false;
            
          //Moving Obstacle 7
            
            //Coordinates
          
              //X
              l3MO7.x = 3800;
            
              //Y
              l3MO7.y = 550;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO7.oX = 3800;
            
                //Y
                l3MO7.oY = 550;
                
              //Destination Coordinates
          
                //X
                l3MO7.mDX = -5000;
            
                //Y
                l3MO7.mDY = 550;
                
            //Current Speed
              
              //X
              l3MO7.xCS = 0;
                
              //Y
              l3MO7.yCS = 0;
              
            //Touching Player Boolean
            l3MO7.tP = false;
            
          //Moving Obstacle 8
            
            //Coordinates
          
              //X
              l3MO8.x = 4200;
            
              //Y
              l3MO8.y = 580;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO8.oX = 4200;
            
                //Y
                l3MO8.oY = 580;
                
              //Destination Coordinates
          
                //X
                l3MO8.mDX = -5000;
            
                //Y
                l3MO8.mDY = 580;
                
            //Current Speed
              
              //X
              l3MO8.xCS = 0;
                
              //Y
              l3MO8.yCS = 0;
              
            //Touching Player Boolean
            l3MO8.tP = false;
            
          //Moving Obstacle 9
            
            //Coordinates
          
              //X
              l3MO9.x = 4600;
            
              //Y
              l3MO9.y = 350;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO9.oX = 4600;
            
                //Y
                l3MO9.oY = 350;
                
              //Destination Coordinates
          
                //X
                l3MO9.mDX = -5000;
            
                //Y
                l3MO9.mDY = 350;
                
            //Current Speed
              
              //X
              l3MO9.xCS = 0;
                
              //Y
              l3MO9.yCS = 0;
              
            //Touching Player Boolean
            l3MO9.tP = false;
            
          //Moving Obstacle 10
            
            //Coordinates
          
              //X
              l3MO10.x = 5000;
            
              //Y
              l3MO10.y = 510;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO10.oX = 5000;
            
                //Y
                l3MO10.oY = 510;
                
              //Destination Coordinates
          
                //X
                l3MO10.mDX = -5000;
            
                //Y
                l3MO10.mDY = 510;
                
            //Current Speed
              
              //X
              l3MO10.xCS = 0;
                
              //Y
              l3MO10.yCS = 0;
              
            //Touching Player Boolean
            l3MO10.tP = false;
            
          //Moving Obstacle 11
            
            //Coordinates
          
              //X
              l3MO11.x = 1400;
            
              //Y
              l3MO11.y = 500;
            
            //Movement Based Coordinates
            
              //Original Coordinates
          
                //X
                l3MO11.oX = 1400;
            
                //Y
                l3MO11.oY = 500;
                
              //Destination Coordinates
          
                //X
                l3MO11.mDX = -24000;
            
                //Y
                l3MO11.mDY = 500;
                
            //Current Speed
              
              //X
              l3MO11.xCS = 0;
                
              //Y
              l3MO11.yCS = 0;
              
            //Touching Player Boolean
            l3MO11.tP = false;
    
  }
  
  /*--------*/
  
  //Set Scene
  public void sS() {
    
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
      
      //Set Scene To Level 3
      l3();
      
    }
    
    //If Current Scene is 7
    if (cS == 7) {
      
      //Set Scene To Story Scene 3
      sS3();
      
    }
    
    //If Current Scene is 1000
    if (cS == 1000) {
      
      //Set Scene To Boss Scene
      bS();
      
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
      this.x = x;
      
      //Y
      this.y = y;
      
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
        
        //Outline - None
        noStroke();
        
      //Rectangle
      rect(x, y, w, h); 
      
      
      //Collisions
        
      //Side
         
        //If Right Side Of Player is Touching The Left Side of the Platform And D Key Is Pressed
        if ((p.x + p.w/2 == x) && ((p.y > y && p.y < y + h) || (p.y - 34 > y && p.y - 34 < y + h) || (p.y - 60 > y && p.y - 60 < y + h) || (p.y - 15 > y && p.y - 15 < y + h) || (p.y + 34 > y && p.y + 34 < y + h) || (p.y + 15 > y && p.y + 15 < y + h)) && dP == true) {
          
          //Set Speed To 0
          s = 0;
              
        }
        
        //If Left Side Of Player is Touching The Left Side of the Platform And A Key Is Pressed
        if ((p.x - p.w/2 == x + w) && ((p.y > y && p.y < y + h) || (p.y - 34 > y && p.y - 34 < y + h) || (p.y - 60 > y && p.y - 60 < y + h) || (p.y - 15 > y && p.y - 15 < y + h) || (p.y + 34 > y && p.y + 34 < y + h) || (p.y + 15 > y && p.y + 15 < y + h)) && aP == true) {
          
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
      
    //Set To Speed
    x -= s;
    
      
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
    
  //Dimensions
  
    //Width
    int w;
    
    //Height
    int h;
    
  //Touching Player Boolean
  boolean tP;


//Constructor Method
O(int x, int y, int w, int h) {
  
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
    x -= s;
    
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
      
      //Color - Black
      fill(160, 82, 45);
      
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
      
    //Destination Coordinates
    
      //X
      int mDX;
      
      //Y
      int mDY;
    
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
      
      this.oY = y;
      
    //Movement Distance
    
      //X
      this.mDX = mDX;
      
      //Y
      this.mDY = mDY;
      
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
      
    //Destination Coordinates
    
      //X
      int mDX;
      
      //Y
      int mDY;
    
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
      
    //Movement Distance
    
      //X
      this.mDX = mDX;
      
      //Y
      this.mDY = mDY;
    
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
        if ((p.x + p.w/2 == x) && ((p.y > y && p.y < y + h) || (p.y - 34 > y && p.y - 34 < y + h) || (p.y - 60 > y && p.y - 60 < y + h) || (p.y - 15 > y && p.y - 15 < y + h) || (p.y + 34 > y && p.y + 34 < y + h) || (p.y + 15 > y && p.y + 15 < y + h))) {
          
          //Set Speed To 0
          s = 0;
          
        }
        
        //If Left Side Of Player is Touching The Left Side of the Platform And A Key Is Pressed
        if ((p.x - p.w/2 == x + w) && ((p.y > y && p.y < y + h) || (p.y - 34 > y && p.y - 34 < y + h) || (p.y - 60 > y && p.y - 60 < y + h) || (p.y - 15 > y && p.y - 15 < y + h) || (p.y + 34 > y && p.y + 34 < y + h) || (p.y + 15 > y && p.y + 15 < y + h))) {
          
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
  
}
