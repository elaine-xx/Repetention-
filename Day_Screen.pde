void drawDayScreen(int month, int day) {
  int padding = 70;
  textSize(40);
  fill(255);
  rectMode(CORNERS);  
  
  text(nameOfMonth(month) + " " + day, 100,93);
  
  rect(0+padding, 120, width-padding, height-padding);
  rect(0+padding, 470, width-padding, height-padding);
  
  textSize(20);
  text("Save Changes?", 760, 91);
  checkmark = loadImage("green check.png");
  xMark = loadImage("x mark.png");
  image(checkmark, 900, 65, 40, 40);
  image(xMark, 950, 64, 42, 42);
  
  button1.setVisible(true);
  custom_slider1.setVisible(true);
  textfield1.setVisible(true);  
  
  if (mousePressed == true) {
    if(mouseX >= 900 && mouseX <= 940) {
      if (mouseY >= 65 && mouseY <= 105) {
        DrawDayScreen = false;
        textfield1.setVisible(false);
        custom_slider1.setVisible(false);
        DrawOnce = true;
      }
    }
    if(mouseX>=950 && mouseX<=992) {
      if(mouseY>=64 && mouseY<=108) {
        DrawDayScreen = false;
        DrawOnce = true;
      }
    }
  }
  
  rect(93,480, 570,520);
}

// I think this should be a class, in order to have one for each of the days or something 
