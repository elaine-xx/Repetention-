class Day {
  float x, y, SizeX, SizeY;
  int dayNum;
  color Colour;
  boolean SelectedOnce;
  
  Day(float x, float y, float SizeX, float SizeY, int dayNum){
    this.x = x;
    this.y = y;
    this.SizeX = SizeX;
    this.SizeY = SizeY;
    this.Colour = color(255);
    this.dayNum = dayNum;
  }
  
  void mouseClicked(){ 
      if (mouseX >= this.x && mouseX <= this.x + this.SizeX && mouseY >= this.y && mouseY <= this.y + this.SizeY){
        this.Colour = color(255, 0, 0);
      }
  }
  void DrawMe() {            
    if (DrawDayScreen == false){
      if (mousePressed == true) { 
        for (int i = 0; i< weeks; i++) { 
          for (int j = 0; j<days; j++) {
            if (mouseX >= Days[j][i].x && mouseX <= Days[j][i].x + Days[j][i].SizeX ){
              if (mouseY >= Days[j][i].y + Days[j][i].SizeY && mouseY <= Days[j][i].y + Days[j][i].SizeY*2){
                if (SelectedOnce == false){
                  Days[j][i].Colour = color(255,0,0);
                  DrawDayScreen = true;
                  DrawOnce = true;
                }
                else if (SelectedOnce == true){
                  Days[j][i].Colour = color(255);
                }
              }
            }
          }
        }
      }
    }
    
    else
      this.Colour = color(255);
    fill(this.Colour);
    rectMode(CORNERS);
    rect(this.x, this.y+this.SizeY, this.x+this.SizeX, this.y+this.SizeY*2);    
    
    fill(0);
    textSize(15);
    stroke(0);
    if(this.dayNum > 0)
      text(this.dayNum, x + 5, y + SizeY + 20);
  }
}
