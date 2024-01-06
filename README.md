# Programming-Portfolio-AdvaithPillai
This is a collection of some of my favorite programming projects that I feel best display my programming journey.

You can find the programs through the .exe files. You must download the folder and open the .exe (disabling Windows Defender if it asks) file to run the program.

Source code can be found in the .pde files.

Games:

TargetSmash - My first video game.
Through this game, I learned the basics of how to apply animation
skills. I had difficult at first managing the timer, but I figured out
how to use it once I read through the documentation. Additionally,
I had trouble keeping track of each bullet I programmed, as I had
to define new variables for each bullet. This forced me to learn
Object Oriented Programming, something I frequently use in the
projects I make today.


PVP Masters - Local PVP game
I built on my original game, creating multiple different game modes
with different objectives: a simple shooter game, an evasion
game, and a capture the flag game. I had a few different
challenges for each game. One that I vividly remember was in the
Capture the Flag Game, I had issues with creating a player that
could move in all 4 directions with a mouse (the library I was using
could only register 1 key at a time. Thus, I had to try to create an
optimal pathfinder program, trying to maximize the fluidity of
moving in all 4 directions for the player that was forced to use the
mouse (since a key hit from both players at the same time would
not work). Additionally, the simple shooter game had a glitch
where bullets would register as hits even when not making contact
with players, for which I had to use an improved hitbox, smaller
and closer to the player.


Royal_Heist (First PC Game)
This was my first PC game, and my first time using the Processing
library for Java (though I had programmed in Java for command-
line programs. This was also my first platformer, and I had a short
schedule, since I had to juggle this with school and make a game
for my brother's birthday in 2 to 3 weeks. Some of the biggest
challenges I faced were due to the platforming aspect, as I had to
create a physics engine (which I would use in later games) that
had jumping and landing methods. I also faced extensive glitches
with the platforms themselves, including the player clipping into
platforms. not landing on the edge, or getting stuck in moving
platforms. I had to go through each line step by step, thinkina
about the different hitboxes at play and figure out how to register a
collision for all the different ways a player could collide with a
platform.


ProjectNet (First Online Game)
This game is currently not functional, as it relied on the specific IP
addresses of our home computers, which have changed. I thought
of this idea a few days before my brother's birthday, initially
thinking I was delusional when going through the documentation
for the networking library I found, but somehow I was able to
convince myself that I would get it done. From there, I put in a lot
of work over the 4 days, trying to experiment and deal with bugs
regarding the networking engine, and I ended up making a
specific client and server program so that me and my brother
could play on our two computers. I had to fix many bugs and
errors regarding if the players hit each other, transferring player
data between computers, and the different ending possibilities,
including what would happen if a person rejoined a room after
winning a game, for when I had to reset the map and prevent the
other player from automatically joining. I finished an hour before
putting the flash drive under the tree.


Birthday_Arena (Improved Online Game)
After conquering the basic challenges of the networking library,
now I was ready to put it to full use in a fully fledged PVP online
game. I decided to create a game for my friend's birthday, which
was only two weeks away. I built on ProjectNet, but I had to polish
it up for my friend. I managed to figure out how to get a program
to be able to both start and join servers by splitting up the program
into a server and client portion, combining the two programs of
ProjectNet. After that, most of my work was in map design,
emotes, writing a card (that was in the game), and writing music
for different maps while getting the MIDI files to work (my brother
played it on the digital piano). In short, I poured my love into the
game, compiling aspects from all of the previous games
showcased here, from Object Oriented Programming, the Physics
Engine, the Online Component, and adding on more aesthetic
features with bug fixes to create a game that I am incredibly proud
of.
