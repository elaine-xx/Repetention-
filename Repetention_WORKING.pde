import g4p_controls.*;
PImage rightArrow, leftArrow, checkmark, xMark;
int imageSize = 50;
int textHeight = 100;

float daySizeX, daySizeY;
float paddingX = 50;
float paddingY = 100;

int days = 7;
int weeks = 6;
int month = 9;
int year = 2029;
int dayBeingShown = 5;

boolean DrawDayScreen = false;
boolean DrawOnce = true;

Day[][] Days;

void setup() {
  size(1000, 600);  
  
  createGUI();
  
  // if (weekMonthStarter(year, month) + lengthOfMonth(year, month) > 35) //If total amt of days exceeds five weeks.
  //  weeks = 6;
    
  //else if(weekMonthStarter(year, month) + lengthOfMonth(year, month) > 28) //If total amt of days exceeds fivefour weeks.
  //  weeks = 5;
    
  //else
  //  weeks = 4;
  
  daySizeX = (width-2*paddingX)/days; //width of a day
  daySizeY = (height-2*paddingY)/weeks; //height 
  Days = new Day[days][weeks];
  
}


void draw() {  
  background(204);    
  if (DrawDayScreen == false) {
    
     //if (weekMonthStarter(year, month) + lengthOfMonth(year, month) > 35) //If total amt of days exceeds five weeks.
     //   weeks = 6;
        
     //else if(weekMonthStarter(year, month) + lengthOfMonth(year, month) > 28) //If total amt of days exceeds fivefour weeks.
     //  weeks = 5;
        
     //else
     //  weeks = 4;
    
    button1.setVisible(false);
    custom_slider1.setVisible(false);
    textfield1.setVisible(false);
    
    int dayStarter = weekMonthStarter(year, month);
    stroke(255);
    textSize(60);
    fill(255);
    
    text(nameOfMonth(month) + " " + year, 75, textHeight+10);
    
    rightArrow = loadImage("right-arrow-for-next-month.png");
    image(rightArrow, width - paddingX - imageSize, textHeight-imageSize/2 - 10, imageSize, imageSize);
    
    leftArrow = loadImage("left-arrow-for-previous-month.png");
    image(leftArrow, width - paddingX - 2*imageSize, textHeight - imageSize/2 - 10, imageSize, imageSize);
    
    int topLeftText = 1; //Number in the top left of each day when drawing calendar
    
    textSize(10);
    stroke(0);
    fill(0);
    
    float y = paddingY;
    for (int i = 0; i < weeks; i++) { 
      float x = paddingX;
      for (int j = 0; j < days; j++) {      
        
        if((lengthOfMonth(year, month) >= topLeftText - dayStarter) && (topLeftText - dayStarter > 0))
          Days[j][i] = new Day(x, y, daySizeX, daySizeY, topLeftText - dayStarter);
          
        else
          Days[j][i] = new Day(x, y, daySizeX, daySizeY, 0);
        
        Days[j][i].DrawMe();
        
        topLeftText += 1;
        x += daySizeX;
      }
      y += daySizeY;
    }
  }
  
  else if(DrawDayScreen == true){
    button1.setVisible(true);
    custom_slider1.setVisible(true);
    textfield1.setVisible(true);
    
    //month, day
    drawDayScreen(month, dayBeingShown);
  }
  
  
  //Draw day of week above calendar block
  String[] daysOfWeek= {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
  for (int i=0; i < 7; i++) {
    textSize(18);
    text(daysOfWeek[i], paddingX+(paddingX/2)+25+ daySizeX * i, 165);
  }
  
}
