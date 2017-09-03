import ddf.minim.*; //Sound Library
import gifAnimation.*; //Gif Animation Library (I really didnt want to go old school and draw the gif frame by frame. Plus this can pull from a URl :)

//boolean locked = false; //Legacy varible, useless for now

//Not sure why these next 3 lines have to exist, but the examples have them. Ill figure that part out later
AudioPlayer song;
Minim minim;
Gif loopingGif;

//Alright! Lets set up some ish

void setup() {
  size(500, 500); //Size Seems legit
  background(0); //Black is the new Black
  minim = new Minim(this); //I can call the sound library easier now
  song = minim.loadFile("100.mp3"); //Loading in the Sax appeal  
  song.loop(); //Such a solid jam. We must loop this song forever!!!!!
  loopingGif = new Gif(this, "./saxgif.gif"); //Saxy Gif Activate!
  loopingGif.loop(); //Lets loop this badboy
  frameRate(02);
}
 
//The main event is about to go down!!!
 
void draw() {

  image(loopingGif,loopingGif.height,loopingGif.width); //Consistant Saxsanity
  
  //Make some random varibles to make some random shapes
  float x = random(500);
  float y = random(500);
  float w = random(100);
  float h = random(100);
  float x1 = random(500);
  float x2 = random(500);
  
  
  image(loopingGif,x1,x2); //Random saxyness
  
  //Move the mouse and the colors change
  fill(mouseX, mouseY, random(255)); 
  //Time to get rect (draw rectangles)
  rect(x, y, w, h);
  //Not to quick now
  delay(100);
  // Sax Drive Activated!!!!
  song.play();
  
  //So there has to be a better way to do this. Right click to stop music and blank out the screen.
  if (mousePressed && (mouseButton == RIGHT)) {
    background(0);
    song.pause();
    
  }
}

//still not sure how this works buuuut, left mouse will pause the loop and music. Not sure why this works out of the loop.

void mousePressed() {
  if (mouseButton == LEFT) {
    noLoop();
    song.pause();
  }
  
  //note to future self. Figure out how to save frames with the "s" key or something. Also exit on "esc"
    //saveFrame();
    //;
    
  }

//restart the loop on mouse release (any button)
void mouseReleased() {
  loop();
}
