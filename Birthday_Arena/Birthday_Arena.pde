/*Libraries*/
import processing.net.*;
import processing.sound.*;

/**Declare Scene Objects**/

//All Scenes

  //Recipient Variable
  String recipient = "Shlok";

  //Key Variables
  
    //A
    boolean aP;
    
    //D
    boolean dP;
    
  //Scene Manager
  SM sM;
  
  //Typing Manager
  TM tM;
  
  //Environmental Assets Manager
  EA eaM;
  
  //Fonts
    
    //Calibria
    PFont calibria;
    
  //Sounds
    
    //Main Theme
        
      //Path
      String mTP;
      
      //Object
      SoundFile mT;
      
      //Audio Name
      String mTAN = "Main Menu Theme.wav";
    
  //Buttons
  
    //Back Button
    B bB;
  
    //Leave Button
    B lB;

//Connector Scenes

  //Main Menu
  
    //Buttons
    
      //Start Server Button
      B mmSSB;
      
      //Join Server Button
      B mmSJSB;
      
      //How To Play Button
      B mmHTPB;
      
      //Birthday Cart Button
      B mmBCB;
      
  //Game Code Scene
  
    //Buttons
    
      //Join Button
      B jB;

  //End Scene
  
    //Buttons
    
      //Play Again Button
      B eSpAB;
      
      
//Game Scenes

  //Map Value
  int m = 1;
  
  //Map Variables
  
    //All Maps
    
      //Platforms
      
        //Platform 1
        PF P1;
        
        //Platform 2
        PF P2;
  
    //Map 2
    
      //Platforms
    
        //Platform 1
        PF m2P1;
        
        //Platform 2
        PF m2P2;
        
        //Platform 3
        PF m2P3;
        
        //Platform 4
        PF m2P4;
        
        //Platform 5
        PF m2P5;
        
        //Platform 6
        PF m2P6;
        
        //Platform 7
        PF m2P7;
        
        //Platform 8
        PF m2P8;
        
        //Platform 9
        PF m2P9;
        
        //Platform 10
        PF m2P10;
        
      //Obstacles
      
        //Obstacle 1
        O m2O1;
        
        //Obstacle 2
        O m2O2;
        
    //Map 3
    
      //Platforms
      
        //Platform 1
        PF m3P1;
      
        //Platform 2
        PF m3P2;
      
        //Platform 3
        PF m3P3;
      
        //Platform 4
        PF m3P4;
        
        //Platform 5
        PF m3P5;
        
        //Platform 6
        PF m3P6;
      
      //Obstacles
      
        //Obstacle 1
        O m3O1;
        
      //Moving Obstacles
      
        //Moving Obstacle 1
        MO m3MO1;
        
        //Moving Obstacle 2
        MO m3MO2;
        
        //MOving Obstacle 3
        MO m3MO3;
        
      //Moving Platforms
      
        //Moving PLatform 1
        MPF m3MP1;
        
    //Map 4
    
      //Platforms
      
        //Platform 1
        PF m4P1;
        
        //Platform 2
        PF m4P2;
        
        //Platform 3
        PF m4P3;
        
        //Platform 4
        PF m4P4;
        
        //Platform 5
        PF m4P5;
        
        //Platform 6
        PF m4P6;
        
      //Obstacles
        
        //Obstacle 1
        O m4O1;
        
      //Moving Obstacles
      
        //Moving Obstacle 1
        MO m4MO1;
        
        //Moving Obstacle 2
        MO m4MO2;
        
      //Moving Platforms
      
        //Moving Obstacle 1
        MPF m4MP1;
        
        //Moving Obstacle 2
        MPF m4MP2;
      
  //Map Buttons
  
    //Map 1
    B m1B;
    
    //Map 2
    B m2B;
    
    //Map 3
    B m3B;
    
    //Map 4
    B m4B;
  

//Server Variables

  //Server
  Server s;

  //IP Address
  String ip;
  
    //Server Won Boolean
    int SsW = 0;
  
  //Client
  Client SC;
    
    //Client Original Data
    String input;
  
    //Client Spliced Data
    int data[];
    
    //Client Current Scene
    int ScCS;
    
    //Client Won Boolean
    int ScW = 0;
  
  //Player 1
  P Sp1;
  
  //Player 2
  P Sp2;
  
  
//Client Variables

  //Server
  
    //Server Won Boolean
    int CsW = 0;
    
    //Client Verson
    boolean CcSW = false;
    
  //Client
  Client c;
    
    //Server Current Scene
    int CsCS;
    
    //Client Won Boolean
    int CcW = 0;
    
    //Client Version
    boolean CcCW = false;

  //Player 1
  P Cp1;

  //Player 2
  P Cp2;




/*---------------------------------------------*/




/**Setup**/
void setup() {

/*Screen*/

//Window Size
size(1350, 650);

//Frames Per Second
frameRate(60);

//Icon
  
  //Load Image
  PImage icon = loadImage("Icon.png");
    
  //Set Image As Icon
  surface.setIcon(icon);
  
  
/*Define Objects*/

//All Scenes

  //Calibria
  calibria = createFont("calibria.ttf", 100);

  //Scene Manager
  sM = new SM();
  
  //Typing Manager
  tM = new TM(125, 325, 1100, 5, 20);
  
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
  
  //Buttons
  
    //Leave Button
    lB = new B(10, 125, 104, 46, "Leave", 36, 18, 155);
    
    //Back Button
    bB = new B(30, 30, 46, 46, "<", 50, 40, 68);
    
    
//Game Scenes
  
  //Map Variables
  
    //All Maps
    
      //Platforms
      
        //Platform 1
        P1 = new PF(-30, 0, 30, 650);
      
        //Platform 2
        P2 = new PF(1350, 0, 30, 650);
  
    //Map 2
    
      //Platforms
    
        //Platform 1
        m2P1 = new PF(300, 582, 750, 50);
        
        //Platform 2
        m2P2 = new PF(350, 534, 650, 50);
        
        //Platform 3
        m2P3 = new PF(400, 482, 550, 52);
        
        //Platform 4
        m2P4 = new PF(450, 434, 450, 50);
        
        //Platform 5
        m2P5 = new PF(500, 382, 350, 52);
        
        //Platform 6
        m2P6 = new PF(550, 334, 250, 50);
        
        //Platform 7
        m2P7 = new PF(600, 282, 150, 52);
        
        //Platform 8
        m2P8 = new PF(650, 234, 50, 50);
        
        //Platform 9
        m2P9 = new PF(60, 250, 150, 30);
        
        //Platform 10
        m2P10 = new PF(1140, 250, 150, 30);
        
      //Obstacles
      
        //Obstacle 1
        m2O1 = new O(30, 130, 30, 150);
        
        //Obstacle 2
        m2O2 = new O(1290, 130, 30, 150);
        
    //Map 3
    
      //Platforms
      
        //Platform 1
        m3P1 = new PF(255, 570, 30, 85);
      
        //Platform 2
        m3P2 = new PF(1065, 570, 30, 85);
      
        //Platform 3
        m3P3 = new PF(325, 134, 700, 30);
        
        //Platform 4
        m3P4 = new PF(60, 254, 150, 30);
        
        //Platform 5
        m3P5 = new PF(1140, 254, 150, 30);
      
      //Obstacles
      
        //Obstacle 1
        m3O1 = new O(285, 600, 780, 50);
        
      //Moving Obstacles
      
        //Moving Obstacle 1
        m3MO1 = new MO(650, 40, 30, 100, 0, 10, 650, 500);
        
        //Moving Obstacle 2
        m3MO2 = new MO(265, 30, 30, 80, 0, 5, 265, 350);
        
        //Moving Obstacle 3
        m3MO3 = new MO(1055, 30, 30, 80, 0, 5, 1055, 350);
        
      //Moving Platforms
      
        //Moving Platform 1
        m3MP1 = new MPF(295, 434, 150, 30, 5, 0, 925, 434);
        
    //Map 4
    
      //Platforms
      
        //Platform 1
        m4P1 = new PF(100, 534, 200, 30);
      
        //Platform 2
        m4P2 = new PF(1050, 534, 200, 30);
        
        //Platform 3
        m4P3 = new PF(0, 354, 100, 30);
        
        //Platform 4
        m4P4 = new PF(1250, 354, 100, 30);
        
        //Platform 5
        m4P5 = new PF(0, 186, 60, 30);
        
        //Platform 6
        m4P6 = new PF(1290, 186, 60, 30);
        
      //Obstacles
      
        //Obstacle 1
        m4O1 = new O(0, 620, 1350, 100);
        
      //Moving Obstacles
      
        //Moving Obstacle 1
        m4MO1 = new MO(400, 20, 30, 80, 0, 5, 400, 520);
      
        //Moving Obstacle 2
        m4MO2 = new MO(950, 520, 30, 80, 0, -5, 950, 20);
      
      //Moving Platforms
      
        //Moving Platform 1
        m4MP1 = new MPF(160, 254, 100, 30, 5, 0, 1090, 254);
      
        //Moving Platform 2
        m4MP2 = new MPF(1090, 106, 100, 30, -5, 0, 160, 106);
      
  //Map Buttons
  
    //Map 1
    m1B = new B(550, 60, 30, 30, "1", 30, 557, 85);
    
    //Map 2
    m2B = new B(610, 60, 30, 30, "2", 30, 617, 85);
    
    //Map 3
    m3B = new B(670, 60, 30, 30, "3", 30, 677, 85);
    
    //Map 4
    m4B = new B(730, 60, 30, 30, "4", 30, 737, 85);
      
  
//Connector Scenes

  //Main Menu Scene Variables
  
    //Buttons
    
      //Start Server Button
      mmSSB = new B(285, 310, 350, 80, "Start Server", 60, 315, 368);
      
      //Join Server Button
      mmSJSB = new B(685, 310, 350, 80, "Join Server", 60, 725, 368);
      
      //How To Play Button
      mmHTPB = new B(5, 610, 150, 30, "How To Play", 25, 16, 632);
      
      //Birthday Card Button
      mmBCB = new B(160, 610, 158, 30, "Birthday Card", 25, 166, 632);
      
  //Game Code Scene
  
    //Buttons
    
      //Join Button
      jB = new B(585, 450, 180, 70, "Join", 60, 625, 502);
      
  //End Scene
  
    //Buttons
    
      //Play Again Button
      eSpAB = new B(620, 540, 110, 30, "Play Again", 20, 630, 560);
      

//Server Variables

  //Server
  s = new Server(this, 49152);

  //IP Address
  
    //Execute Command
    try {
    
      //Access Local Machine IP Settings
      java.net.InetAddress localMachine = java.net.InetAddress.getLocalHost();  
      
      //Save Extracted IP Address
      ip = localMachine.getHostAddress();
    
    }
    
    //Catch Unknown Nonsensical Error
  catch(java.net.UnknownHostException uhe) {
    
    //No Code Required
    
  }
  
  //Player 1
  Sp1 = new P(200, 408);
  
  //Player 2
  Sp2 = new P(1150, 408);
  

//Client Variables

  //Player 1
  Cp1 = new P(1150, 408);
  
  //Player 2
  Cp2 = new P(200, 408);
  
}



/*---------------------------------------------*/


/**Key Pressed Tracker**/
void keyPressed() {
  
//If in Game Code Scene
if (sM.cS == 5) {
  
  //If 0 is pressed
  if (keyCode == 48) {
    
    //Add 1 to Game Code
    tM.pT += "0";
    
  }
  
  //If 1 is pressed
  if (keyCode == 49) {
    
    //Add 1 to Game Code
    tM.pT += "1";
    
  }
  
  //If 2 is pressed
  if (keyCode == 50) {
    
    //Add 1 to Game Code
    tM.pT += "2";
    
  }
  
  //If 3 is pressed
  if (keyCode == 51) {
    
    //Add 1 to Game Code
    tM.pT += "3";
    
  }
  
  //If 4 is pressed
  if (keyCode == 52) {
    
    //Add 1 to Game Code
    tM.pT += "4";
    
  }
  
  //If 5 is pressed
  if (keyCode == 53) {
    
    //Add 1 to Game Code
    tM.pT += "5";
    
  }
  
  //If 6 is pressed
  if (keyCode == 54) {
    
    //Add 1 to Game Code
    tM.pT += "6";
    
  }
  
  //If 7 is pressed
  if (keyCode == 55) {
    
    //Add 1 to Game Code
    tM.pT += "7";
    
  }
  
  //If 8 is pressed
  if (keyCode == 56) {
    
    //Add 1 to Game Code
    tM.pT += "8";
    
  }
  
  //If 9 is pressed
  if (keyCode == 57) {
    
    //Add 1 to Game Code
    tM.pT += "9";
    
  }
  
  //If . is pressed (Not the correct keyCode, it is a bug in the library)
  if (keyCode == 46) {
    
    //Add . to Game Code
    tM.pT += ".";
    
  }
  
  //If Backspace is pressed (Not the correct keyCode, it is a bug in the library)
  if (keyCode == 8) {
    
    //Delete Game Code
    tM.pT = "";
  }
  
  //If Enter is pressed
  if (keyCode == ENTER) {
    
    //Go to Client Game Scene
    sM.cS = 3;
    
    //Join Game
    c = new Client(this, tM.pT, 49152);
        
    //Change Theme
          
      //End Previous Theme
      mT.stop();
          
      //Set The Variables
          
        //Start Map 1 Music
        mTAN = "Birthday Arena Original Map Theme.wav";
            
        //Path
        mTP = sketchPath(mTAN);
          
        //Object
        mT = new SoundFile(this, mTP);
          
      //Loop New Theme
      mT.loop();
    
  }
  
}
  

//If In Server Scenes
if (sM.cS == 1 || sM.cS == 2) {
  
  //If W is pressed and jump meter has loaded and if player is not falling
  if (keyCode == 87 && Sp1.mL == true && Sp1.f == false) {
    
    //Check if Player is on the platforms On Server Game Scene (Based on their map)
    if (sM.cS == 1 && Sp1.oG == true || (m == 2 && (m2P1.tP == true || m2P2.tP == true || m2P3.tP == true || m2P4.tP == true || m2P5.tP == true || m2P6.tP == true || m2P7.tP == true || m2P8.tP == true || m2P9.tP == true || m2P10.tP == true)) || (m == 3 && (m3P1.tP == true || m3P2.tP == true || m3P3.tP == true || m3P4.tP == true || m3P5.tP == true || m3MP1.tP == true)) || (m == 4 && (m4P1.tP == true || m4P2.tP == true || m4P3.tP == true || m4P4.tP == true || m4P5.tP == true || m4P6.tP == true || m4MP1.tP == true || m4MP2.tP == true))) {
      
      //Make player go up
      Sp1.jS = 8;
      
      //Reset Jump Meter
    
        //Set Jump Meter Loaded Boolean to false
        Sp1.mL = false;
    
        //Move circle back
        Sp1.meCX = Sp1.meX;
      
        //Start Loading meter again
        Sp1.meCS = 1;
      
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
    Sp1.dFL = true;
    
  }
  
  
  //If D is pressed And It Is Not Locked
  if (keyCode == 68) {
    
    //Set Key Booleans 
    
      //A Key 
      aP = false; 
      
      //D Key 
      dP = true;
      
      
    //Set Direction Boolean
    Sp1.dFL = false;
    
  }
  
  
  //If Space Is Pressed And Sword Meter Is Loaded
  if (keyCode == 32 && Sp1.smL == true) {
    
    //Take the sword out
    Sp1.sO = true;
      
    
      //Reset Sword Meter
    
        //Set Sword Meter Loaded Boolean to false
        Sp1.smL = false;
    
        //Move circle back
        Sp1.smeCX = Sp1.smeX;
      
        //Start Loading meter again
        Sp1.smeCS = 1;
    
  }
  
  //If E is Pressed and Emote Counter is Loaded
  if (keyCode == 69 && Sp1.eC == 360) {
    
    //Set Happy Emote To Used Status
    Sp1.heU = true;
      
    //Set Emote Counter to 0
    Sp1.eC = 0;
    
  }
  
  //If Q is Pressed and Emote Counter is Loaded
  if (keyCode == 81 && Sp1.eC == 360) {
    
    //Set Happy Emote To Used Status
    Sp1.seU = true;
      
    //Set Emote Counter to 0
    Sp1.eC = 0;
    
  }

}


//If In Client Scenes
if (sM.cS == 3 || sM.cS == 4) {
  
  //If W is pressed and jump meter has loaded and if player is not falling
  if (keyCode == 87 && Cp1.mL == true && Cp1.f == false) {
    
    //Check if Player is on the platforms On Maps in Client Game Scene
    if (sM.cS == 3 && Cp1.oG == true || (m == 2 && (m2P1.tP == true || m2P2.tP == true || m2P3.tP == true || m2P4.tP == true || m2P5.tP == true || m2P6.tP == true || m2P7.tP == true || m2P8.tP == true || m2P9.tP == true || m2P10.tP == true)) || (m == 3 && (m3P1.tP == true || m3P2.tP == true || m3P3.tP == true || m3P4.tP == true || m3P5.tP == true || m3MP1.tP == true)) || (m == 4 && (m4P1.tP == true || m4P2.tP == true || m4P3.tP == true || m4P4.tP == true || m4P5.tP == true || m4P6.tP == true || m4MP1.tP == true || m4MP2.tP == true))) {
      
      //Make player go up
      Cp1.jS = 8;
      
    
      //Reset Jump Meter
    
        //Set Jump Meter Loaded Boolean to false
        Cp1.mL = false;
    
        //Move circle back
        Cp1.meCX = Cp1.meX;
      
        //Start Loading meter again
        Cp1.meCS = 1;
      
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
    Cp1.dFL = true;
    
  }
  
  
  //If D is pressed And It Is Not Locked
  if (keyCode == 68) {
    
    //Set Key Booleans 
    
      //A Key 
      aP = false; 
      
      //D Key 
      dP = true;
      
      
    //Set Direction Boolean
    Cp1.dFL = false;
    
  }
  
  
  //If Space Is Pressed And Sword Meter Is Loaded
  if (keyCode == 32 && Cp1.smL == true) {
    
    //Take the sword out
    Cp1.sO = true;
      
    
      //Reset Sword Meter
    
        //Set Sword Meter Loaded Boolean to false
        Cp1.smL = false;
    
        //Move circle back
        Cp1.smeCX = Cp1.smeX;
      
        //Start Loading meter again
        Cp1.smeCS = 1;
        
  }
  
  //If E is Pressed and Emote Counter is Loaded
  if (keyCode == 69 && Cp1.eC == 360) {
    
    //Set Happy Emote To Used Status
    Cp1.heU = true;
      
    //Set Emote Counter to 0
    Cp1.eC = 0;
    
  }
  
  //If Q is Pressed and Emote Counter is Loaded
  if (keyCode == 81 && Cp1.eC == 360) {
    
    //Set Happy Emote To Used Status
    Cp1.seU = true;
      
    //Set Emote Counter to 0
    Cp1.eC = 0;
    
  }

}

}



/*---------------------------------------------*/
  
  
  
  
/*Mouse Clicked Method*/
void mouseClicked() {
  
  //Connector Scenes
  
    //If Player is on Main Menu Scene
    if (sM.cS == 0) {
      
      //If Start Server Button is Pressed
      if (mmSSB.moB == true) {
        
        //Reset boolean
        mmSSB.moB = false;
        
        //Go to Server Game Scene
        sM.cS = 1;
        
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Birthday Arena Original Map Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(this, mTP);
          
          //Loop New Theme
          mT.loop();
        
      }
      
      //If Join Server Button is Pressed
      if (mmSJSB.moB == true) {
        
        //Reset boolean
        mmSJSB.moB = false;
        
        //Go to Game Code Scene
        sM.cS = 5;
        
      }
      
      //If How To Play Button is Pressed
      if (mmHTPB.moB == true) {
        
        //Reset boolean
        mmHTPB.moB = false;
        
        //Go to How To Play Scene
        sM.cS = 1000;
        
      }
      
      //If Birthday Card Button is Pressed
      if (mmBCB.moB == true) {
        
        //Reset boolean
        mmBCB.moB = false;
        
        //Go to Birthday Card Scene
        sM.cS = 2000;
        
      }
      
    }
    
    //If player is on Game Code Scene
    if (sM.cS == 5) {
      
      //If Back Button is Pressed
      if (bB.moB == true) {
      
        //Reset boolean
        bB.moB = false;
        
        //Reset Game
        sM.rG();
      
      }
      
      //If Join is Pressed
      if (jB.moB == true) {
      
        //Reset boolean
        jB.moB = false;
        
        //Join Server Game
        
          //Go to Client Game Scene
          sM.cS = 3;
          
          //Join Game
          c = new Client(this, tM.pT, 49152);
        
          //Change Theme
            
            //End Previous Theme
            mT.stop();
            
            //Set The Variables
            
              //Start Map 1 Music
              mTAN = "Birthday Arena Original Map Theme.wav";
              
              //Path
              mTP = sketchPath(mTAN);
            
              //Object
              mT = new SoundFile(this, mTP);
            
            //Loop New Theme
            mT.loop();
      
      }
      
    }
    
    //If player is on How To Play Scene
    if (sM.cS == 1000) {
      
      //If Back Button is Pressed
      if (bB.moB == true) {
      
        //Reset boolean
        bB.moB = false;
        
        //Reset Game
        sM.rG();
      
      }
      
    }
    
    //If player is on Birthday Card Scene
    if (sM.cS == 2000) {
      
      //If Back Button is Pressed
      if (bB.moB == true) {
      
        //Reset boolean
        bB.moB = false;
        
        //Reset Game
        sM.rG();
      
      }
      
    }
    
    
  //Game And End Scenes
  
    //If player is in any game or end scene scene
    if (sM.cS == 1 || sM.cS == 2 || sM.cS == 3 || sM.cS == 4) {
      
      //If Leave Button is Pressed
      if (lB.moB == true) {
      
        //Reset boolean
        lB.moB = false;
        
        //Reset Game
        sM.rG();
        
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Main Menu Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(this, mTP);
          
          //Loop New Theme
          mT.loop();
      
      }
      
    }
    
    //If Player is on Server Game Scene
    if (sM.cS == 1) {
      
      //If Map 1 Button is Pressed
      if (m1B.moB == true) {
      
        //Reset boolean
        m1B.moB = false;
        
        //Reset Server Game Scene
        sM.Sr();
        
        //Set Map To 1
        m = 1;
        
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Birthday Arena Original Map Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(this, mTP);
          
          //Loop New Theme
          mT.loop();
      
      }
      
      //If Map 2 Button is Pressed
      if (m2B.moB == true) {
      
        //Reset boolean
        m2B.moB = false;
        
        //Reset Server Game Scene
        sM.Sr();
        
        //Set Map To 2
        m = 2;
        
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Birthday Arena Desert Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(this, mTP);
          
          //Loop New Theme
          mT.loop();
      
      }
      
      //If Map 3 Button is Pressed
      if (m3B.moB == true) {
      
        //Reset boolean
        m3B.moB = false;
        
        //Reset Server Game Scene
        sM.Sr();
        
        //Set Map To 3
        m = 3;
        
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Castle Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(this, mTP);
          
          //Loop New Theme
          mT.loop();
      
      }
      
      //If Map 4 Button is Pressed
      if (m4B.moB == true) {
      
        //Reset boolean
        m4B.moB = false;
        
        //Reset Server Game Scene
        sM.Sr();
        
        //Set Map To 4
        m = 4;
        
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Space Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(this, mTP);
          
          //Loop New Theme
          mT.loop();
      
      }
      
    }
    
    //If player is on Server End Scene
    if (sM.cS == 2) {
      
      //If Play Again Button is Pressed
      if (eSpAB.moB == true) {
        
        //Reset boolean
        eSpAB.moB = false;
        
        //Reset Game
        sM.Sr();
        
      }
      
    }
    
    //If player is on Client End Scene
    if (sM.cS == 4) {
      
      //If Play Again Button is Pressed
      if (eSpAB.moB == true) {
        
        //Reset boolean
        eSpAB.moB = false;
        
        //Reset Game
        sM.Cr();
        
      }
      
    }
  
}
  
  
  
/*---------------------------------------------*/




/*Key Released Method*/
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

//If on Server Scenes
if (sM.cS == 1 || sM.cS == 2) {
  
  //Client Communication
      
    //Write Coordinates Of Player 1
    s.write(Sp1.x + " " + Sp1.y + " " + Sp1.sX + " " + Sp1.sY + " " + sM.cS + " " + Sp1.l + " " + ScW + " " + SsW + " " + m + " " + Sp1.heX + " " + Sp1.heY + " " + Sp1.seX + " " + Sp1.seY + "\n");
   
    //Recieve Data from Client
    SC = s.available();
        
      if (SC != null) {
       
        //Get String Data
        input = SC.readString(); 
        
        // Only up to the newline
        input = input.substring(0, input.indexOf("\n"));  
        
        // Split values into an array
        data = int(split(input, ' '));
       
        //Interpret Values
       
          //Coordinates
            
            //X
            Sp2.x = data[0];
              
            //Y
            Sp2.y = data[1];
           
          //Sword Coordinates
         
            //X
            Sp2.sX = data[2];
           
            //Y
            Sp2.sY = data[3];
           
          //Current Scene
          ScCS = data [4];
           
          //Lives
          Sp2.l = data[5];
          
          //Emote Variables
          
            //Happy Emote
            
              //X
              Sp2.heX = data[6];
            
              //Y
              Sp2.heY = data[7];
          
            //Sad Emote
            
              //X
              Sp2.seX = data[8];
            
              //Y
              Sp2.seY = data[9];
        
     }  

}


//If on Client Scenes
if (sM.cS == 3 || sM.cS == 4) {
  
  //Communicate With Server  
      
    //Write Coordinates Of Player 1
    c.write(Cp1.x + " " + Cp1.y + " " + Cp1.sX + " " + Cp1.sY + " " + sM.cS + " " + Cp1.l + " " + Cp1.heX + " " + Cp1.heY + " " + Cp1.seX + " " + Cp1.seY + "\n");
        
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
         Cp2.x = data[0];
                
         //Y
         Cp2.y = data[1];
             
       //Sword Coordinates
           
         //X
         Cp2.sX = data[2];
             
         //Y
         Cp2.sY = data[3];
              
       //Current Scene
       CsCS = data [4];
             
       //Lives
       Cp2.l = data[5];
       
       //Win Booleans
       
         //Client Win
         CcW = data[6];
         
         //Server Win
         CsW = data[7];
         
       //Map
       m = data[8];
          
       //Emote Variables
          
         //Happy Emote
            
           //X
           Cp2.heX = data[9];
            
           //Y
           Cp2.heY = data[10];
          
         //Sad Emote
            
           //X
           Cp2.seX = data[11];
            
           //Y
           Cp2.seY = data[12];
      
    }
  
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
    cS = 0;
  
}


//Methods

  //Main Menu Scene
  public void mm() {
    
    //Current Scene
    cS = 0;
    
    //Background - White
    background (255, 255, 255);
    
    //Title
    
      //Setup
      
        //Font - Calibria
        textFont(calibria);
        
        //Color - Red
        fill(255, 0, 0);
        
        //Size
        textSize(120);
        
      //Text
      text("Birthday Arena", 290, 200);
    
    //Buttons
    
      //Start Server Button
      
        //Generate
        mmSSB.g();
        
      //Join Server Button
      
        //Generate
        mmSJSB.g();
        
      //How To Play Button
      
        //Generate
        mmHTPB.g();
        
      //Birthday Card Button
      
        //If Game Is For Shlok
        if (recipient == "Shlok") {
          
          //Generate
          mmBCB.g();
        
        }
    
  }
  
  /*----------------*/
  
  //How To Play Scene
  public void hTP() {
    
    //Current Scene
    cS = 1000;
    
    //Background - White
    background(255, 255, 255);
    
    //Title
    
      //Setup
      
        //Font - Calibria
        textFont(calibria);
        
        //Color - Red
        fill(255, 0, 0);
        
        //Size
        textSize(80);
        
      //Text
      text("How To Play", 125, 140);
      
    //Text
    
      //Setup
        
          //Font
          textFont(calibria);
        
          //Size
          textSize(25);
          
          //Color
          fill(255, 0, 0);
          
        //Text
        text("Use the game codes of your opponent to join a server, or send them your game code, located on the top of your game screen when you start a server. The controls are as follows: \n\nJump: W \n\nRun Left: A \n\nRun Right: D \n\nThrust Condensed Plasma Beam: SPACE \n\nEmote: E (Happy)/Q (Sad)", 120, 200, 1050, 400);
    
    
    //Buttons
    
      //Back Button
      bB.g();
    
  }
  
  /*----------------*/
  
  //Birthday Card Scene
  public void bCS() {
    
    //Current Scene
    cS = 2000;
    
    //Background - White
    background(255, 255, 255);
    
    //Title
    
      //Setup
      
        //Font - Calibria
        textFont(calibria);
        
        //Color - Red
        fill(255, 0, 0);
        
        //Size
        textSize(80);
        
      //Text
      text("Birthday Card", 125, 140);
      
    //Text
    
      //Setup
        
          //Font
          textFont(calibria);
        
          //Size
          textSize(25);
          
          //Color
          fill(255, 0, 0);
          
        //Text
        text("Dear Shlok, \n\nOnce again, Happy Birthday! When we remembered your birthday two weeks ago, we thought this might be a cool gift to make, but I never thought it would actually manifest the way it is. It may not be perfect, but we hope you like it, and the work we put into it reflects how special you are to us! Have fun! \n\nFrom, \n\nAdvaith and Ashwath", 120, 200, 1050, 400);
    
    
    //Buttons
    
      //Back Button
      bB.g();
    
  }
  
  /*----------------*/
  
  //Game Code Scene
  public void gCS() {
    
    //Current Scene
    cS = 5;
    
    //Background - White
    background (255, 255, 255);
    
    //Title
    
      //Setup
      
        //Font - Calibria
        textFont(calibria);
        
        //Color - Red
        fill(255, 0, 0);
        
        //Size
        textSize(65);
        
      //Text
      text("Enter Game Code", 125, 180);
        
    //Typing Manager
    
      //Generate Typing Interface
      tM.tI();
      
    //Buttons
    
      //Back Button
      bB.g();
      
      //Join Button
      jB.g();
    
  }
  
  /*----------------*/

  //Server Game Scene
  public void SgS() {
    
    //Current Scene
    cS = 1;
  
    //Background
    eaM.b();
      
      //Ground
      eaM.gR();
     
    
    //Draw Players
    
      //Player 1
        
        //Draw
        Sp1.g();
        
      //Player 2
      
        //If online player is active and on game scene
        if (SC != null && ScCS == 3) {
          
          //Draw
          Sp2.oG();
          
    
          //Collision
          
            //If Player 2's sword collides with player 1 OR Player hits an obstacle in a certain map
            if (((Sp2.sX > Sp1.x - Sp1.w/2 && Sp2.sX < Sp1.x + Sp1.w/2) && (Sp2.sY > Sp1.y - 65 && Sp2.sY < Sp1.y + 36)) || (m == 2 && (m2O1.tP == true || m2O2.tP == true)) || (m == 3 && (m3O1.tP == true || m3MO1.tP == true || m3MO2.tP == true || m3MO3.tP == true)) || (m == 4 && (m4O1.tP == true || m4MO1.tP == true || m4MO2.tP == true))) {
              
              //Reset player 1 position
              
                //X
                Sp1.x = Sp1.oX;
                
                //Y
                Sp1.y = Sp1.oY;
                
              //Subtract 1 from lives
              Sp1.l -= 1;
            
          }
      
        }
        
        
          
          
        //If someone runs out of lives, go to end scene
        if (Sp1.l == 0 || Sp2.l == 0) {
          
          //Set End Scene Text
          
            //If Server Player Won
            if (Sp1.l > 0) {
              
              SsW = 1;
              
              //Go to end scene
              cS = 2;
              
            }
            
            //Else If Client Player Won
            if (Sp1.l <= 0) {
              
              ScW = 1;
              
              //Go to end scene
              cS = 2;
              
            }
            
        }
        
        
    //If Player is Not Online
    if (SC == null) {
        
      //Game Code
      
        //Display
        
          //Setup
            
            //Font - Calibria
            textFont(calibria);
            
            //Color - Black
            fill(0, 0, 0);
            
              //If In Space Map
              if (m == 4) {
                
                //Color - Green
                fill(48, 209, 27);
                
              }
          
            //Size
            textSize(30);
            
          //Text
          text("Game Code: " + ip, 530, 35);
          
          
      //Map Buttons
      
        //Title
        
          //Setup
          
            //Color - Black
            fill(0, 0, 0);
            
              //If In Space Map
              if (m == 4) {
                
                //Color - Green
                fill(48, 209, 27);
                
              }
            
            //Font - Calibria
            textFont(calibria);
            
            //Text Size
            textSize(30);
            
          //Text
          text("Maps:", 450, 80);
          
        //Buttons
        
          //Map 1
          m1B.g();
          
          //Map 2
          m2B.g();
          
          //Map 3
          m3B.g();
          
          //Map 4
          m4B.g();
      
    }
      
    
   //Maps
   
     //All Maps
     
       //Platforms
       
         //Platform 1
         P1.Sg();
         
         //Platform 2
         P2.Sg();
   
     //Map 2
     if (m == 2) {
         
       //Platforms
         
         //Platform 1
         m2P1.Sg();
         
         //Platform 2
         m2P2.Sg();
         
         //Platform 3
         m2P3.Sg();
         
         //Platform 4
         m2P4.Sg();
         
         //Platform 5
         m2P5.Sg();
         
         //Platform 6
         m2P6.Sg();
         
         //Platform 7
         m2P7.Sg();
         
         //Platform 8
         m2P8.Sg();
         
         //Platform 9
         m2P9.Sg();
         
         //Platform 10
         m2P10.Sg();
         
       //Obstacles
       
         //Obstacle 1
         m2O1.Sg();
       
         //Obstacle 2
         m2O2.Sg();
         
     }
     
     //Map 3
     if (m == 3) {
         
       //Platforms
       
         //Platform 1
         m3P1.Sg();
       
         //Platform 2
         m3P2.Sg();
       
         //Platform 3
         m3P3.Sg();
         
         //Platform 4
         m3P4.Sg();
         
         //Platform 5
         m3P5.Sg();
       
       //Obstacles
       
         //Obstacle 1
         m3O1.Sg();
         
       //Moving Obstacles
       
         //Moving Obstacle 1
         m3MO1.Sg();
         
         //Moving Obstacle 2
         m3MO2.Sg();
         
         //Moving Obstacle 3
         m3MO3.Sg();
       
       //Moving Platforms
       
         //Moving Platform 1
         m3MP1.Sg();
       
     }
     
     //Map 4
     if (m == 4) {
         
       //Platforms
       
         //Platform 1
         m4P1.Sg();
         
         //Platform 2
         m4P2.Sg();
         
         //Platform 3
         m4P3.Sg();
         
         //Platform 4
         m4P4.Sg();
         
         //Platform 5
         m4P5.Sg();
         
         //Platform 6
         m4P6.Sg();
       
       //Obstacle
       
         //Obstacle 1
         m4O1.Sg();
         
       //Moving Obstacles
       
         //Moving Obstacle 1
         m4MO1.Sg();
       
         //Moving Obstacle 2
         m4MO2.Sg();
       
       //Moving Platforms
       
         //Moving Platform 1
         m4MP1.Sg();
       
         //Moving Platform 2
         m4MP2.Sg();
       
       
       //Bottomless Pit Rectangle
       
         //Setup
         
           //Color - Black
           fill(0, 0, 0);
           
         //Draw
         rect(0, 620, 1350, 100);
       
     }
       
    
    //Buttons
    
      //Leave Button
      lB.g();
    
  }
  
  /*----------------*/
  
  //Server End Scene
  public void SeS() {
    
    //Current Scene
    cS = 2;
    
    //Background - Grey
    background(255, 255, 255);
    
    
    //Reset Lives to avoid glitch at restart
    Sp1.l = 4;
   
    
    //Text
    
      //If player loses
      if (ScW == 1) {
        
        //Setup
        
          //Color - Red
          fill(255, 0, 0);
          
          //Text Size
          textSize(60);
          
        //Text
        text("Sorry, you lost. Keep trying, \n       and you will win!", 340, 200);
        
      }
      
      //If player winds
      if (SsW == 1) {
        
        //Setup
        
          //Color - Red
          fill(255, 0, 0);
          
          //Text Size
          textSize(60);
          
        //Text
        text("Congratulations, you won!", 350, 200);
        
        //If Player is Shlok
        if (recipient == "Shlok") {
          
          //Gift Card Code
    
            //Setup
        
              //Font
              textFont(calibria);
        
              //Size
              textSize(25);
          
              //Color
              fill(255, 0, 0);
              
            //Text
            text("Your Amazon Gift Card Code: LFFZ-8R9Q3Q-GGA4", 0, 650);
          
        }
        
      }
  
  
  //Buttons
  
    //Play Again Button
    eSpAB.g();
    
    //Leave Button
    lB.g();
    
  }
  
  /*----------------*/
  
  //Client Game Scene
  public void CgS() {
    
    //Current Scene
    cS = 3;
    
    //Buttons
    
      //Leave Button
      lB.g();
    
    //Background
    eaM.b();
      
      //Ground
      eaM.gR();
      
    
    //Draw Players
    
      //Player 1
        
        //Draw
        Cp1.g();
        
      //Player 2
        
        //If online player is connected and on scene 1
        if (c != null && CsCS == 1) {
          
          //Draw Player 2
          Cp2.oG();
        
    
        //Collision
        
          //If Player 2's sword collides with player 1 OR Player hits an obstacle in a certain map
          if ((Cp2.sX > Cp1.x - Cp1.w/2 && Cp2.sX < Cp1.x + Cp1.w/2) && (Cp2.sY > Cp1.y - 65 && Cp2.sY < Cp1.y + 36) || (m ==2 && (m2O1.tP == true || m2O2.tP == true)) || (m == 3 && (m3O1.tP == true || m3MO1.tP == true || m3MO2.tP == true || m3MO3.tP == true)) || (m == 4 && (m4O1.tP == true || m4MO1.tP == true || m4MO2.tP == true))) {
            
            //Reset player 1 position
            
              //X
              Cp1.x = Cp1.oX;
              
              //Y
              Cp1.y = Cp1.oY;
              
            //Subtract 1 from lives
            Cp1.l -= 1;
            
          }
        
      }
      
       
      //If someone runs out of lives, go to end scene
          
          //If Client Player Won
          if (CcW == 1) {
              
            CcCW = true;  
            
            //Go to end scene
            cS = 4;
              
          }
            
          //Else If Server Player Won
          if (CsW == 1) {
              
            CcSW = true;  
            
            //Go to end scene
            cS = 4;
              
          }
      
    
   //Maps
   
     //All Maps
       
       /*//Set Music
       if (mTAN != "Birthday Arena Original Theme.wav") {
         
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Birthday Arena Original Map Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(Birthday_Arena.this, mTP);
          
          //Loop New Theme
          mT.loop();
         
       }*/
     
       //Platforms
       
         //Platform 1
         P1.Cg();
         
         //Platform 2
         P2.Cg();
   
     //Map 2
     if (m == 2) {
       
       /*//Set Music
       if (mTAN != "Birthday Arena Desert Theme.wav") {
         
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Birthday Arena Desert Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(Birthday_Arena.this, mTP);
          
          //Loop New Theme
          mT.loop();
         
       }*/
         
       //Platforms
         
         //Platform 1
         m2P1.Cg();
         
         //Platform 2
         m2P2.Cg();
         
         //Platform 3
         m2P3.Cg();
         
         //Platform 4
         m2P4.Cg();
         
         //Platform 5
         m2P5.Cg();
         
         //Platform 6
         m2P6.Cg();
         
         //Platform 7
         m2P7.Cg();
         
         //Platform 8
         m2P8.Cg();
         
         //Platform 9
         m2P9.Cg();
         
         //Platform 10
         m2P10.Cg();
         
       //Obstacles
       
         //Obstacle 1
         m2O1.Cg();
       
         //Obstacle 2
         m2O2.Cg();
         
     }
     
     //Map 3
     if (m == 3) {
       
       /*//Set Music
       if (mTAN != "Castle Theme.wav") {
         
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Castle Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(Birthday_Arena.this, mTP);
          
          //Loop New Theme
          mT.loop();
         
       }*/
         
       //Platforms
       
         //Platform 1
         m3P1.Cg();
       
         //Platform 2
         m3P2.Cg();
       
         //Platform 3
         m3P3.Cg();
         
         //Platform 4
         m3P4.Cg();
         
         //Platform 5
         m3P5.Cg();
       
       //Obstacles
       
         //Obstacle 1
         m3O1.Cg();
         
       //Moving Obstacles
       
         //Moving Obstacle 1
         m3MO1.Cg();
         
         //Moving Obstacle 2
         m3MO2.Cg();
         
         //Moving OBstacle 3
         m3MO3.Cg();
         
       //Moving Platforms
       
         //Moving Platform 1
         m3MP1.Cg();
       
     }
     
     //Map 4
     if (m == 4) {
       
       /*//Set Music
       if (mTAN != "Space Theme.wav") {
         
          //Change Theme
          
          //End Previous Theme
          mT.stop();
          
          //Set The Variables
          
            //Start Map 1 Music
            mTAN = "Space Theme.wav";
            
            //Path
            mTP = sketchPath(mTAN);
          
            //Object
            mT = new SoundFile(Birthday_Arena.this, mTP);
          
          //Loop New Theme
          mT.loop();
         
       }*/
         
       //Platforms
       
         //Platform 1
         m4P1.Cg();
         
         //Platform 2
         m4P2.Cg();
         
         //Platform 3
         m4P3.Cg();
         
         //Platform 4
         m4P4.Cg();
         
         //Platform 5
         m4P5.Cg();
         
         //Platform 6
         m4P6.Cg();
       
       //Obstacle
       
         //Obstacle 1
         m4O1.Cg();
         
       //Moving Obstacles
       
         //Moving Obstacle 1
         m4MO1.Cg();
       
         //Moving Obstacle 2
         m4MO2.Cg();
       
       //Moving Platforms
       
         //Moving Platform 1
         m4MP1.Cg();
       
         //Moving Platform 2
         m4MP2.Cg();
       
       
       //Bottomless Pit Rectangle
       
         //Setup
         
           //Color - Black
           fill(0, 0, 0);
           
         //Draw
         rect(0, 620, 1350, 100);
           
     }
    
    
    //Buttons
    
      //Leave Button
      lB.g();
      
  }
  
  /*----------------*/
  
  //Client End Scene
  public void CeS() {
    
    //Current Scene
    cS = 4;
    
    //Buttons
    
      //Leave Button
      lB.g();
    
    //Background - Grey
    background(255, 255, 255);
    
    
    //Reset Lives to avoid glitch at restart
    Cp1.l = 4;
    
    
    //Reset Player Coordinates
    
      //X
      Cp1.x = Cp1.oX;
      
      //Y
      Cp1.y = Cp1.oY;
      
      //Sword Coordinates
      
        //X
        Cp1.sX = Cp1.x;
        
        //Y
        Cp1.sY = Cp1.y;
   
    
    //Text
    
      //If player loses
      if (CcSW == true) {
        
        //Setup
        
          //Color - Red
          fill(255, 0, 0);
          
          //Text Size
          textSize(60);
          
        //Text
        text("Sorry, you lost. Keep trying, \n       and you will win!", 340, 200);
        
      }
      
      //Else (If player wins)
      if (CcCW == true) {
        
        //Setup
        
          //Color - Red
          fill(255, 0, 0);
          
          //Text Size
          textSize(60);
          
        //Text
        text("Congratulations, you won!", 350, 200);
        
        //If Player is Shlok
        if (recipient == "Shlok") {
          
          //Gift Card Code
    
            //Setup
        
              //Font
              textFont(calibria);
        
              //Size
              textSize(25);
          
              //Color
              fill(255, 0, 0);
              
            //Text
            text("Your Amazon Gift Card Code:  LFFZ-8R9Q3Q-GGA4", 0, 650);
            
        }
        
      }
  
  
    //Buttons
  
      //Play Again Button
      
        //If server player is on scene 1
        if (CsCS == 1) {
          
          //Draw
          eSpAB.g();
      
        }
    
      //Leave Button
      lB.g();
    
  }
  
  /*----------------*/
  
  //Server Reset Method
  public void Sr() {
    
    //Current Scene
    cS = 1;
    
    //Winning Booleans
    
      //Server Won Boolean
      SsW = 0;
      
      //Client Won Boolean
      ScW = 0;
    
    //Player
    
      //Reset Sword Meter
      
        //Keep sword in
        Sp1.sO = false;
    
        //Set Sword Meter Loaded Boolean to false
        Sp1.smL = false;
    
        //Move circle back
        Sp1.smeCX = Sp1.smeX;
      
        //Start Loading meter again
        Sp1.smeCS = 1;
    
      //Coordinates
      
        //X
        Sp1.x = Sp1.oX;
      
        //Y
        Sp1.y = Sp1.oY;
        
      //Lives
      Sp1.l = 4;
      
    //Reset Moving Assets
    
      //Map 3
      
        //Moving Obstacles
        
          //Moving Obstacle 1
          m3MO1.r();
        
          //Moving Obstacle 1
          m3MO2.r();
        
          //Moving Obstacle 1
          m3MO3.r();
          
        //Moving Platforms
        
          //Moving Platform 1
          m3MP1.r();
          
      //Map 4
      
        //Moving Obstacles
        
          //Moving Obstacle 1
          m4MO1.r();
        
          //Moving Obstacle 1
          m4MO2.r();
          
        //Moving Platforms
        
          //Moving Platform 1
          m4MP1.r();
        
          //Moving Obstacle 1
          m4MP2.r();
    
  }
  
  /*----------------*/
  
  //Client Reset Method
  public void Cr() {
    
    //Current Scene
    cS = 3;
    
    //Win Booleans (Client Version)
    
      //Client Win
      CcCW = false;
      
      //Server Win
      CcSW = false;
    
    //Player
    
      //Reset Sword Meter
      
        //Keep sword in
        Cp1.sO = false;
    
        //Set Sword Meter Loaded Boolean to false
        Cp1.smL = false;
    
        //Move circle back
        Cp1.smeCX = Cp1.smeX;
      
        //Start Loading meter again
        Cp1.smeCS = 1;
    
      //Coordinates
      
        //X
        Cp1.x = Cp1.oX;
      
        //Y
        Cp1.y = Cp1.oY;
        
      //Lives
      Cp1.l = 4;
    
  }
  
  /*----------------*/
  
  //Reset Game Method
  public void rG() {
    
    //Current Scene
    cS = 0;
    
    //Map
    m = 1;
    
    //Server Variables
    
      //Winning Booleans
      
        //Server Won Boolean
        SsW = 0;
        
        //Client Won Boolean
        ScW = 0;
      
      //Player
      
        //Reset Sword Meter
        
          //Keep sword in
          Sp1.sO = false;
      
          //Set Sword Meter Loaded Boolean to false
          Sp1.smL = false;
      
          //Move circle back
          Sp1.smeCX = Sp1.smeX;
        
          //Start Loading meter again
          Sp1.smeCS = 1;
      
        //Coordinates
        
          //X
          Sp1.x = Sp1.oX;
        
          //Y
          Sp1.y = Sp1.oY;
          
        //Lives
        Sp1.l = 4;
    
    
    //Client Variables
    
      //Win Booleans (Client Version)
      
        //Client Win
        CcCW = false;
        
        //Server Win
        CcSW = false;
      
      //Player
      
        //Reset Sword Meter
        
          //Keep sword in
          Cp1.sO = false;
      
          //Set Sword Meter Loaded Boolean to false
          Cp1.smL = false;
      
          //Move circle back
          Cp1.smeCX = Cp1.smeX;
        
          //Start Loading meter again
          Cp1.smeCS = 1;
      
        //Coordinates
        
          //X
          Cp1.x = Cp1.oX;
        
          //Y
          Cp1.y = Cp1.oY;
          
        //Lives
        Cp1.l = 4;
    
  }
  
  /*----------------*/
  
  //Set Scene
  public void sS() {
    
    //If Current Scene Is 0
    if (cS == 0) {
      
      //Go to Main Menu Scene
      mm();
      
    }
    
    //If Current Scene Is 1
    if (cS == 1) {
      
      //Go to Server Game Scene
      SgS();
      
    }
    
    //If Current Scene Is 2
    if (cS == 2) {
      
      //Go to Server End Scene
      SeS();
      
    }
    
    //If Current Scene Is 3
    if (cS == 3) {
      
      //Go to Client Game Scene
      CgS();
      
    }
    
    //If Current Scene Is 4
    if (cS == 4) {
      
      //Go to Client End Scene
      CeS();
      
    }
    
    //If Current Scene Is 5
    if (cS == 5) {
      
      //Go to Game Code Scene
      gCS();
      
    }
    
    //If Current Scene Is 1000
    if (cS == 1000) {
      
      //Go to How To Play Scene
      hTP();
      
    }
    
    //If Current Scene Is 2000
    if (cS == 2000) {
      
      //Go to Birthday Card Scene
      bCS();
      
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
        
        //Original Coordinates
        
          //X
          int oX;
          
          //Y
          int oY;
        
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
      
  //Emote Varaibles
  
    //Counter
    int eC;
    
      //Speed
      int eCS;
    
    //Emotes
  
      //Happy Emote
      
        //Coordinates
        
          //X
          int heX;
          
          //Y
          int heY;
          
        //Used Boolean
        boolean heU;
    
      //Sad Emote
      
        //Coordinates
        
          //X
          int seX;
          
          //Y
          int seY;
          
        //Used Boolean
        boolean seU;


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
      
    //Emote Varaibles
    
      //Emote Counter
      eC = 0;
    
      //Speed
      eCS = 0;
      
      //Emotes
    
        //Happy Emote
        
          //Coordinates
          
            //X
            heX = 2000;
            
            //Y
            heY = 2000;
          
        //Used Boolean
        heU = false;
      
        //Sad Emote
        
          //Coordinates
          
            //X
            seX = 2000;
          
          //Y
          seY = 2000;
          
        //Used Boolean
        seU = false;
  
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
          
          //Color
          
            //If in Server Game Scene
            if (sM.cS == 1) {
              
              //Color - Green
              fill(0, 255, 100);
              
            }
            
            //Else if in Client Game Scene
            else if (sM.cS == 3) {
              
              //Color - Red
              fill(255, 0, 0);
              
            }
        
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
        
          //Color - Black
          fill(0, 0, 0);
          
            //If In Space Map
            if (m == 4) {
              
              //Color - Green
              fill(48, 209, 27);
              
            }
          
          //Size
          textSize(30);
          
        //Draw
        
          //If In Server Game Scene
          if (sM.cS == 1) {
            
            //Display Online Player Lives Text
            text("Lives: " + l, 20, 100);
        
          }
          
          //If In Client Game Scene
          if (sM.cS == 3) {
            
            //Display Online Player Lives Text
            text("Lives: " + l, 1150, 100);
        
          }
    
    
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
          
    //Emotes
    
      //Draw Emotes
      
        //Happy Emote
        
          //Rectangle
          
            //Setup
            
              //Outline - None
              noStroke();
            
              //Color
              fill(255, 255, 255);
              
            //Draw
            rect(heX, heY, 50, 50);
            
          //Eyes
            
            //Setup
              
              //Stroke - Black
              stroke(0, 0, 0);
                
              //Thickness
              strokeWeight(8);
              
            //Draw
            
              //Left Eye
              point(heX + 15, heY + 15);
            
              //Right Eye
              point(heX + 35, heY + 15);
              
          //Mouth
          
            //Setup
                
              //Thickness
              strokeWeight(5);
              
              //Stroke - Black
              stroke(0, 0, 0);
              
              //Set to No - Fill
              noFill();
              
            //Draw
            arc(heX + 25, heY + 25, 30, 30, 0, PI);
            
        //Sad Emote
        
          //Rectangle
          
            //Setup
            
              //Outline - None
              noStroke();
            
              //Color
              fill(255, 255, 255);
              
            //Draw
            rect(seX, seY, 50, 50);
            
          //Eyes
            
            //Setup
              
              //Stroke - Black
              stroke(0, 0, 0);
                
              //Thickness
              strokeWeight(8);
              
            //Draw
            
              //Left Eye
              point(seX + 15, seY + 15);
            
              //Right Eye
              point(seX + 35, seY + 15);
              
          //Mouth
          
            //Setup
                
              //Thickness
              strokeWeight(5);
              
              //Stroke - Black
              stroke(0, 0, 0);
              
              //Set to No - Fill
              noFill();
              
            //Draw
            arc(seX + 25, seY + 40, 30, 30, PI, TWO_PI);
            
      //Emote Timer
      
        //Set Emote Counter itno motion
        eC += eCS;
      
        //If Emote Counter is less than 360
        if (eC < 360) {
          
          //Set Emote Counter Speed to 1
          eCS = 1;
        
        }
        
        //Else
        else {
          
          //Set Emote Counter Speed to 0
          eCS = 0;
          
        }
        
      //Set Emotes
      
        //If Happy Emote Is Used
        if (heU == true) {
          
          //Set Coordinates To Player
          
            //X
            heX = x - 25;
            
            //Y
            heY = y - 130;
          
        }
           
      
        //If Sad Emote Is Used
        if (seU == true) {
          
          //Set Coordinates To Player
          
            //X
            seX = x - 25;
            
            //Y
            seY = y - 130;
          
        }
        
    //If Emote Counter is at 180
    if (eC == 180) {
          
      //Reset Both Emotes
          
        //Happy Emote
              
          //Coordinates
              
            //X
            heX = 2000;
                
            //Y
            heY = 2000;
              
          //Used Boolean
          heU = false;
          
        //Sad Emote
            
          //Coordinates
              
            //X
            seX = 2000;
                
            //Y
            seY = 2000;
                
          //Used Boolean
          seU = false; 
      
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
          
          //Color
          
            //If in Server Game Scene
            if (sM.cS == 1) {
              
              //Color - Red
              fill(255, 0, 0);
              
            }
            
            //Else if in Client Game Scene
            else if (sM.cS == 3) {
              
              //Color - Green
              fill(0, 255, 100);
              
            }
        
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
        
          //Color - Black
          fill(0, 0, 0);
          
            //If In Space Map
            if (m == 4) {
              
              //Color - Green
              fill(48, 209, 27);
              
            }
            
          //Size
          textSize(30);
          
        //Draw
        
          //If In Server Game Scene
          if (sM.cS == 1) {
            
            //Display Online Player Lives Text
            text("Lives: " + l, 1150, 100);
        
          }
          
          //If In Client Game Scene
          if (sM.cS == 3) {
            
            //Display Online Player Lives Text
            text("Lives: " + l, 20, 100);
        
          }
          
    //Emotes
    
      //Draw Emotes
      
        //Happy Emote
        
          //Rectangle
          
            //Setup
            
              //Outline - None
              noStroke();
            
              //Color
              fill(255, 255, 255);
              
            //Draw
            rect(heX, heY, 50, 50);
            
          //Eyes
            
            //Setup
              
              //Stroke - Black
              stroke(0, 0, 0);
                
              //Thickness
              strokeWeight(8);
              
            //Draw
            
              //Left Eye
              point(heX + 15, heY + 15);
            
              //Right Eye
              point(heX + 35, heY + 15);
              
          //Mouth
          
            //Setup
                
              //Thickness
              strokeWeight(5);
              
              //Stroke - Black
              stroke(0, 0, 0);
              
              //Set to No - Fill
              noFill();
              
            //Draw
            arc(heX + 25, heY + 25, 30, 30, 0, PI);
            
        //Sad Emote
        
          //Rectangle
          
            //Setup
            
              //Outline - None
              noStroke();
            
              //Color
              fill(255, 255, 255);
              
            //Draw
            rect(seX, seY, 50, 50);
            
          //Eyes
            
            //Setup
              
              //Stroke - Black
              stroke(0, 0, 0);
                
              //Thickness
              strokeWeight(8);
              
            //Draw
            
              //Left Eye
              point(seX + 15, seY + 15);
            
              //Right Eye
              point(seX + 35, seY + 15);
              
          //Mouth
          
            //Setup
                
              //Thickness
              strokeWeight(5);
              
              //Stroke - Black
              stroke(0, 0, 0);
              
              //Set to No - Fill
              noFill();
              
            //Draw
            arc(seX + 25, seY + 40, 30, 30, PI, TWO_PI);
    
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
            
          }
          
          //Else
          else {
            
            //Set mouse over button boolean to false
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


/*Typing Manager*/
public class TM {
  
//Instance Fields

  //Typing Line
  
    //Coordinates
    
      //X
      int x;
      
      //Y
      int y;
      
    //Dimensions
    
      //Width
      int w;
      
      //Thickness
      int t;
      
  //Person Typing
  
    //String
    String pT;
  
    //Size
    int s;

//Constructor Method
TM(int x, int y, int w, int t, int s) {
  
  //Set Instances To Parameters
  
    //Typing Line
  
      //Coordinates
    
        //X
        this.x = x;
      
        //Y
        this.y = y;
      
      //Dimensions
    
        //Width
        this.w = w;
      
        //Thickness
        this.t = t;
      
    //Words
    
      //String
      this.pT = "";
    
      //Size
      this.s = s;
  
}


//Methods

  //Typing Interface
  public void tI() {
    
    //Typing Line
    
      //Setup
      
        //Color - Black
        stroke(0, 0, 0);
        
        //Thickness
        strokeWeight(t);
        
      //Draw
      line(x, y, x + w, y);
      
    
    //String
    
      //Setup
      
        //Color - Black
        fill(0, 0, 0);
        
        //Size
        textSize(s);
        
      //Display
      text(pT, x, y);
    
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
        if (m == 2) {
            
          //Color - Yellow
          fill(238, 214, 175);
            
        }
      
      //Outline - None
      noStroke();
        
    //Draw
    rect(0, 627, 1350, 100);
    
  }
  
  /*--------*/
  
  //Background
  public void b() {
    
    //If In Original Theme
    if (m == 1) {
      
      //Sky
      background(3, 173, 252);
      
    }
      
    //If In Desert Theme
    if (m == 2) {
      
      //Background - Sky Blue
      background(135, 206, 234);
      
    }
    
    //If In Castle Theme
    if (m == 3) {
    
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
          while (bX <= 1430) {
          
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
    
    //If In Space Theme
    if (m == 4) {
      
      //Background - Black
      background(0, 0, 0);
      
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
    
    //Player Touching Boolean
    this.tP = false;
  
}


//Methods
  
  //Server Generate
  void Sg() {
    
    //Draw
    
      //Setup
      
        //Color - Black
        fill(0, 0, 0);
        
          //If In Desert Map
          if (m == 2) {
            
            //Color - Yellow
            fill(238, 214, 175);
            
          }
          
          //If In Space Map
          if (m == 4) {
            
            //Color - White
            fill(255, 255, 255);
            
          }
        
        //Outline - None
        noStroke();
        
      //Rectangle
      rect(x, y, w, h); 
      
      
      //Collisions
        
      //Side
         
        //If Right Side Of Player is Touching The Left Side of the Platform And D Key Is Pressed
        if ((Sp1.x + Sp1.w/2 == x) && ((Sp1.y > y && Sp1.y < y + h) || (Sp1.y - 33 > y && Sp1.y - 33 < y + h) || (Sp1.y - 60 > y && Sp1.y - 60 < y + h) || (Sp1.y - 15 > y && Sp1.y - 15 < y + h) || (Sp1.y + 35 > y && Sp1.y + 35 < y + h) || (Sp1.y + 15 > y && Sp1.y + 15 < y + h)) && dP == true) {
          
          //Set Speed To 0
          Sp1.s = 0;
              
        }
        
        //If Left Side Of Player is Touching The Left Side of the Platform And A Key Is Pressed
        if ((Sp1.x - Sp1.w/2 == x + w) && ((Sp1.y > y && Sp1.y < y + h) || (Sp1.y - 33 > y && Sp1.y - 33 < y + h) || (Sp1.y - 60 > y && Sp1.y - 60 < y + h) || (Sp1.y - 15 > y && Sp1.y - 15 < y + h) || (Sp1.y + 35 > y && Sp1.y + 35 < y + h) || (Sp1.y + 15 > y && Sp1.y + 15 < y + h)) && aP == true) {
          
          //Set Speed To 0
          Sp1.s = 0;
              
        }
        
      //Head
      
        //If Head Of Player is Touching The Bottom Of The Platform
        if (((Sp1.y - 40 <= y + h) && (Sp1.y - 40 >= y)) && ((Sp1.x > x && Sp1.x < x + w) || (Sp1.x - Sp1.w/2 > x && Sp1.x - Sp1.w/2 < x + w) || (Sp1.x + Sp1.w/2 > x && Sp1.x + Sp1.w/2 < x + w))) {
              
          //Set Jump Meter To Halfway
        
            //Meter Circle
          
              //X
              Sp1.meCX = Sp1.meX + 50;
            
          //Set Falling Boolean To True
          Sp1.f = true;
              
        }
    
      
    //Landing Mechaic
    
      //Check if Player is on it
      if (Sp1.y == y - 34 && Sp1.x > x - Sp1.w/2 && Sp1.x < x + w + Sp1.w/2) {
        
        //Set Resistant force to gravity
        Sp1.y -= Sp1.gP;
        
        //Set Player to not falling
        Sp1.f = false;
        
        //Reset Jump
        
          //Reset Jump Meter
        
            //Meter Circle
          
              //X
              Sp1.meCX = Sp1.meX + 100;
              
                //Fix a bug that causes the meter circle to go one pixel beyond meter
                if (Sp1.meCX == 121) {
                  
                  //Set it back to 120
                  Sp1.meCX = 120;
                  
                }
            
            //Loaded Boolean
            Sp1.mL = true; 
          
        
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
  
  //Client Generate
  void Cg() {
    
    //Draw
    
      //Setup
      
        //Color - Black
        fill(0, 0, 0);
        
          //If In Desert Map
          if (m == 2) {
            
            //Color - Yellow
            fill(238, 214, 175);
            
          }
          
          //If In Space Map
          if (m == 4) {
            
            //Color - White
            fill(255, 255, 255);
            
          }
        
        //Outline - None
        noStroke();
        
      //Rectangle
      rect(x, y, w, h); 
      
      
      //Collisions
        
      //Side
         
        //If Right Side Of Player is Touching The Left Side of the Platform And D Key Is Pressed
        if ((Cp1.x + Cp1.w/2 == x) && ((Cp1.y > y && Cp1.y < y + h) || (Cp1.y - 33 > y && Cp1.y - 33 < y + h) || (Cp1.y - 60 > y && Cp1.y - 60 < y + h) || (Cp1.y - 15 > y && Cp1.y - 15 < y + h) || (Cp1.y + 35 > y && Cp1.y + 35 < y + h) || (Cp1.y + 15 > y && Cp1.y + 15 < y + h)) && dP == true) {
          
          //Set Speed To 0
          Cp1.s = 0;
              
        }
        
        //If Left Side Of Player is Touching The Left Side of the Platform And A Key Is Pressed
        if ((Cp1.x - Cp1.w/2 == x + w) && ((Cp1.y > y && Cp1.y < y + h) || (Cp1.y - 33 > y && Cp1.y - 33 < y + h) || (Cp1.y - 60 > y && Cp1.y - 60 < y + h) || (Cp1.y - 15 > y && Cp1.y - 15 < y + h) || (Cp1.y + 35 > y && Cp1.y + 35 < y + h) || (Cp1.y + 15 > y && Cp1.y + 15 < y + h)) && aP == true) {
          
          //Set Speed To 0
          Cp1.s = 0;
              
        }
        
      //Head
      
        //If Head Of Player is Touching The Bottom Of The Platform
        if (((Cp1.y - 40 <= y + h) && (Cp1.y - 40 >= y)) && ((Cp1.x > x && Cp1.x < x + w) || (Cp1.x - Cp1.w/2 > x && Cp1.x - Cp1.w/2 < x + w) || (Cp1.x + Cp1.w/2 > x && Cp1.x + Cp1.w/2 < x + w))) {
              
          //Set Jump Meter To Halfway
        
            //Meter Circle
          
              //X
              Cp1.meCX = Cp1.meX + 50;
            
          //Set Falling Boolean To True
          Cp1.f = true;
              
        }
    
      
    //Landing Mechaic
    
      //Check if Player is on it
      if (Cp1.y == y - 34 && Cp1.x > x - Cp1.w/2 && Cp1.x < x + w + Cp1.w/2) {
        
        //Set Resistant force to gravity
        Cp1.y -= Cp1.gP;
        
        //Set Player to not falling
        Cp1.f = false;
        
        //Reset Jump
        
          //Reset Jump Meter
        
            //Meter Circle
          
              //X
              Cp1.meCX = Cp1.meX + 100;
              
                //Fix a bug that causes the meter circle to go one pixel beyond meter
                if (Cp1.meCX == 121) {
                  
                  //Set it back to 120
                  Cp1.meCX = 120;
                  
                }
            
            //Loaded Boolean
            Cp1.mL = true; 
          
        
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
O(int x, int y, int w, int h) {
  
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
  public void Sg() {
    
    //Draw Rectangle
    
      //Setup
      
        //Color - Red
        fill(255, 0, 0);
        
        //Outline - None
        noStroke();
        
      //Draw
      rect(x, y, w, h);
      
    
    //Check If Player is touching a obstacle
    if ((Sp1.x + Sp1.w/2 > x && Sp1.x + Sp1.w/2 < x + w) && (Sp1.y > y && Sp1.y < y + h) || (Sp1.x - Sp1.w/2 > x && Sp1.x - Sp1.w/2 < x + w) && (Sp1.y > y && Sp1.y < y + h) || (Sp1.x > x && Sp1.x < x + w) && (Sp1.y + 34 > y && Sp1.y + 34 < y + h) || (Sp1.x > x && Sp1.x < x + w) && (Sp1.y - 34 > y && Sp1.y - 34 < y + h) || (Sp1.x + Sp1.w/2 > x && Sp1.x + Sp1.w/2 < x + w) && (Sp1.y - 34 > y && Sp1.y - 34 < y + h) || (Sp1.x + Sp1.w/2 > x && Sp1.x + Sp1.w/2 < x + w) && (Sp1.y + 34 > y && Sp1.y + 34 < y + h) || (Sp1.x - Sp1.w/2 > x && Sp1.x - Sp1.w/2 < x + w) && (Sp1.y - 34 > y && Sp1.y - 34 < y + h) || (Sp1.x - Sp1.w/2 > x && Sp1.x - Sp1.w/2 < x + w) && (Sp1.y + 34 > y && Sp1.y + 34 < y + h)) {
      
      //Set Player Touching Boolean To True
      tP = true;
      
    }
    
    //Else
    else {
      
      //Set Player Touching Obstacle Boolean To False
      tP = false;
      
    }
    
  }
  
  //Generate
  public void Cg() {
    
    //Draw Rectangle
    
      //Setup
      
        //Color - Red
        fill(255, 0, 0);
        
        //Outline - None
        noStroke();
        
      //Draw
      rect(x, y, w, h);
      
    
    //Check If Player is touching a obstacle
    if ((Cp1.x + Cp1.w/2 > x && Cp1.x + Cp1.w/2 < x + w) && (Cp1.y > y && Cp1.y < y + h) || (Cp1.x - Cp1.w/2 > x && Cp1.x - Cp1.w/2 < x + w) && (Cp1.y > y && Cp1.y < y + h) || (Cp1.x > x && Cp1.x < x + w) && (Cp1.y + 34 > y && Cp1.y + 34 < y + h) || (Cp1.x > x && Cp1.x < x + w) && (Cp1.y - 34 > y && Cp1.y - 34 < y + h) || (Cp1.x + Cp1.w/2 > x && Cp1.x + Cp1.w/2 < x + w) && (Cp1.y - 34 > y && Cp1.y - 34 < y + h) || (Cp1.x + Cp1.w/2 > x && Cp1.x + Cp1.w/2 < x + w) && (Cp1.y + 34 > y && Cp1.y + 34 < y + h) || (Cp1.x - Cp1.w/2 > x && Cp1.x - Cp1.w/2 < x + w) && (Cp1.y - 34 > y && Cp1.y - 34 < y + h) || (Cp1.x - Cp1.w/2 > x && Cp1.x - Cp1.w/2 < x + w) && (Cp1.y + 34 > y && Cp1.y + 34 < y + h)) {
      
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
  
  //Server Generate
  public void Sg() {
    
    //Draw Rectangle
    
      //Setup
      
        //Color - Red
        fill(255, 0, 0);
        
        //Outline - None
        noStroke();
        
      //Draw
      rect(x, y, w, h);
      
    
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
    if ((Sp1.x + Sp1.w/2 > x && Sp1.x + Sp1.w/2 < x + w) && (Sp1.y > y && Sp1.y < y + h) || (Sp1.x - Sp1.w/2 > x && Sp1.x - Sp1.w/2 < x + w) && (Sp1.y > y && Sp1.y < y + h) || (Sp1.x > x && Sp1.x < x + w) && (Sp1.y + 34 > y && Sp1.y + 34 < y + h) || (Sp1.x > x && Sp1.x < x + w) && (Sp1.y - 34 > y && Sp1.y - 34 < y + h) || (Sp1.x + Sp1.w/2 > x && Sp1.x + Sp1.w/2 < x + w) && (Sp1.y - 34 > y && Sp1.y - 34 < y + h) || (Sp1.x + Sp1.w/2 > x && Sp1.x + Sp1.w/2 < x + w) && (Sp1.y + 34 > y && Sp1.y + 34 < y + h) || (Sp1.x - Sp1.w/2 > x && Sp1.x - Sp1.w/2 < x + w) && (Sp1.y - 34 > y && Sp1.y - 34 < y + h) || (Sp1.x - Sp1.w/2 > x && Sp1.x - Sp1.w/2 < x + w) && (Sp1.y + 34 > y && Sp1.y + 34 < y + h)) {
      
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
  
  //Client Generate
  public void Cg() {
    
    //Draw Rectangle
    
      //Setup
      
        //Color - Red
        fill(255, 0, 0);
        
        //Outline - None
        noStroke();
        
      //Draw
      rect(x, y, w, h);
      
    
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
    if ((Cp1.x + Cp1.w/2 > x && Cp1.x + Cp1.w/2 < x + w) && (Cp1.y > y && Cp1.y < y + h) || (Cp1.x - Cp1.w/2 > x && Cp1.x - Cp1.w/2 < x + w) && (Cp1.y > y && Cp1.y < y + h) || (Cp1.x > x && Cp1.x < x + w) && (Cp1.y + 34 > y && Cp1.y + 34 < y + h) || (Cp1.x > x && Cp1.x < x + w) && (Cp1.y - 34 > y && Cp1.y - 34 < y + h) || (Cp1.x + Cp1.w/2 > x && Cp1.x + Cp1.w/2 < x + w) && (Cp1.y - 34 > y && Cp1.y - 34 < y + h) || (Cp1.x + Cp1.w/2 > x && Cp1.x + Cp1.w/2 < x + w) && (Cp1.y + 34 > y && Cp1.y + 34 < y + h) || (Cp1.x - Cp1.w/2 > x && Cp1.x - Cp1.w/2 < x + w) && (Cp1.y - 34 > y && Cp1.y - 34 < y + h) || (Cp1.x - Cp1.w/2 > x && Cp1.x - Cp1.w/2 < x + w) && (Cp1.y + 34 > y && Cp1.y + 34 < y + h)) {
      
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
  
  //Server Generate
  void Sg() {
    
    //Draw
    
      //Setup
      
        //Color - Black
        fill(0, 0, 0);
          
          //If In Space Map
          if (m == 4) {
            
            //Color - White
            fill(255, 255, 255);
            
          }
        
        //Outline - None
        noStroke();
        
      //Rectangle
      rect(x, y, w, h); 
      
    
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
        if ((Sp1.x + Sp1.w/2 == x) && ((Sp1.y > y && Sp1.y < y + h) || (Sp1.y - 33 > y && Sp1.y - 33 < y + h) || (Sp1.y - 60 > y && Sp1.y - 60 < y + h) || (Sp1.y - 15 > y && Sp1.y - 15 < y + h) || (Sp1.y + 33 > y && Sp1.y + 33 < y + h) || (Sp1.y + 15 > y && Sp1.y + 15 < y + h))) {
          
          //Set Speed To 0
          Sp1.s = 0;
          
        }
        
        //If Left Side Of Player is Touching The Left Side of the Platform And A Key Is Pressed
        if ((Sp1.x - Sp1.w/2 == x + w) && ((Sp1.y > y && Sp1.y < y + h) || (Sp1.y - 33 > y && Sp1.y - 33 < y + h) || (Sp1.y - 60 > y && Sp1.y - 60 < y + h) || (Sp1.y - 15 > y && Sp1.y - 15 < y + h) || (Sp1.y + 33 > y && Sp1.y + 33 < y + h) || (Sp1.y + 15 > y && Sp1.y + 15 < y + h))) {
          
          //Set Speed To 0
          Sp1.s = 0;
              
        }
        
      //Head
      
        //If Head Of Player is Touching The Bottom Of The Platform
        if ((Sp1.y - 40 == y - h) && ((Sp1.x > x && Sp1.x < x + w) || (Sp1.x - Sp1.w/2 > x && Sp1.x - Sp1.w/2 < x + w) || (Sp1.x + Sp1.w/2 > x && Sp1.x + Sp1.w/2 < x + w))) {
              
          //Set Jump Meter To Halfway
        
            //Meter Circle
          
              //X
              Sp1.meCX = Sp1.meX + 50;
            
          //Set Falling Boolean To True
          Sp1.f = true;
              
        }
        
      
    //Landing Mechaic
    
      //Check if Player is on it
      if (Sp1.y == y - 34 && Sp1.x > x - Sp1.w/2 && Sp1.x < x + w + Sp1.w/2) {
        
        //Set Resistant force to gravity
        Sp1.y -= Sp1.gP;
        
        //Set Player to not falling
        Sp1.f = false;
        
        //Make Player Move With Platform
        Sp1.s += xCS;
        
        //Reset Jump Meter
        
          //Meter Circle
          
            //X
            Sp1.meCX = Sp1.meX + 100;
            
          //Loaded Boolean
          Sp1.mL = true;
        
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
  
  //Client Generate
  void Cg() {
    
    //Draw
    
      //Setup
      
        //Color - Black
        fill(0, 0, 0);
          
          //If In Space Map
          if (m == 4) {
            
            //Color - White
            fill(255, 255, 255);
            
          }
        
        //Outline - None
        noStroke();
        
      //Rectangle
      rect(x, y, w, h); 
      
    
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
        if ((Cp1.x + Cp1.w/2 == x) && ((Cp1.y > y && Cp1.y < y + h) || (Cp1.y - 33 > y && Cp1.y - 33 < y + h) || (Cp1.y - 60 > y && Cp1.y - 60 < y + h) || (Cp1.y - 15 > y && Cp1.y - 15 < y + h) || (Cp1.y + 33 > y && Cp1.y + 33 < y + h) || (Cp1.y + 15 > y && Cp1.y + 15 < y + h))) {
          
          //Set Speed To 0
          Cp1.s = 0;
          
        }
        
        //If Left Side Of Player is Touching The Left Side of the Platform And A Key Is Pressed
        if ((Cp1.x - Cp1.w/2 == x + w) && ((Cp1.y > y && Cp1.y < y + h) || (Cp1.y - 33 > y && Cp1.y - 33 < y + h) || (Cp1.y - 60 > y && Cp1.y - 60 < y + h) || (Cp1.y - 15 > y && Cp1.y - 15 < y + h) || (Cp1.y + 33 > y && Cp1.y + 33 < y + h) || (Cp1.y + 15 > y && Cp1.y + 15 < y + h))) {
          
          //Set Speed To 0
          Cp1.s = 0;
              
        }
        
      //Head
      
        //If Head Of Player is Touching The Bottom Of The Platform
        if ((Cp1.y - 40 == y - h) && ((Cp1.x > x && Cp1.x < x + w) || (Cp1.x - Cp1.w/2 > x && Cp1.x - Cp1.w/2 < x + w) || (Cp1.x + Cp1.w/2 > x && Cp1.x + Cp1.w/2 < x + w))) {
              
          //Set Jump Meter To Halfway
        
            //Meter Circle
          
              //X
              Cp1.meCX = Cp1.meX + 50;
            
          //Set Falling Boolean To True
          Cp1.f = true;
              
        }
        
      
    //Landing Mechaic
    
      //Check if Player is on it
      if (Cp1.y == y - 34 && Cp1.x > x - Cp1.w/2 && Cp1.x < x + w + Cp1.w/2) {
        
        //Set Resistant force to gravity
        Cp1.y -= Cp1.gP;
        
        //Set Player to not falling
        Cp1.f = false;
        
        //Make Player Move With Platform
        Cp1.s += xCS;
        
        //Reset Jump Meter
        
          //Meter Circle
          
            //X
            Cp1.meCX = Cp1.meX + 100;
            
          //Loaded Boolean
          Cp1.mL = true;
        
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
