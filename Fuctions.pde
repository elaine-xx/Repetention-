String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
int[] monthLengths = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

// Calendar Algorithm 
int weekMonthStarter(int year, int month) {
  int daysSince2023 = 0;
  boolean leapYear;

  for (int i = 2023; i < year; i++) { //adding to daysSince2023 for each yr
    leapYear = (i % 4 == 0) && !(i % 100 == 0); // every 100 years does not count as leap year

    if (leapYear) {
      daysSince2023 += 366; // If a leap year
    } else {
      daysSince2023 += 365;
    }
  }

  for(int i = 0; i < 12; i++){  //adding to daysSince2023 for each month in that year
    if(month > i + 1) //if have not reached chosen month yet,
      daysSince2023 += monthLengths[i]; //add x days
  }

  if ((year % 4 == 0) && !(year % 100 == 0))
    daysSince2023 += 1; //add day if leap year

  int dayOfTheWeek = (daysSince2023 % 7);

  return dayOfTheWeek;
}

//Returns length of month
int lengthOfMonth(int year, int month) {
  int monthLength = 0;
  boolean leapYear = (year % 4 == 0) && !(year % 100 == 0);

  monthLength = monthLengths[month - 1];

  if (leapYear && (month == 2))
      monthLength += 1;

  return monthLength;
}

//Returns name of month
String nameOfMonth(int month) {    
  return months[month - 1];
}

void mousePressed() {
  //next month arrow clicked
  if ((dist(mouseX, mouseY, width - paddingX - imageSize/2.0, textHeight - imageSize/2) <= imageSize/2.0) && (DrawDayScreen == false)) {
     month += 1;
     if(month == 13){
       month = 1;
       year += 1;
     }
  } 
  
  //previous month arrow clicked
  else if ((dist(mouseX, mouseY, width - paddingX - imageSize - imageSize/2.0, textHeight - imageSize/2) <= imageSize/2.0) && (DrawDayScreen == false)) {
     month -= 1;
     if(month == 0){
       month = 12;
       year -= 1;
     }
  } 
}
