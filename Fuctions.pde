String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
int[] monthLengths = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

// Calendar Algorithm 
int weekMonthStarter(int year, int month) {
  int daysSince2023 = 0;
  boolean leapYear;

  for (int i = 2023; i < year; i++) {
    leapYear = (i % 4 == 0) && !(i % 100 == 0);

    if (leapYear) {
      daysSince2023 += 366; // If a leap year
    } else {
      daysSince2023 += 365;
    }
  }

  for(int i = 0; i < 12; i++){
    if(month > i + 1)
      daysSince2023 += monthLengths[i];
  }

  if ((year % 4 == 0) && !(year % 100 == 0))
    daysSince2023 += 1;

  int dayOfTheWeek = (daysSince2023 % 7);

  return dayOfTheWeek;
}

// Returns length of month
int lengthOfMonth(int year, int month) {
  int monthLength = 0;
  boolean leapYear = (year % 4 == 0) && !(year % 100 == 0);

  monthLength = monthLengths[month - 1];

  if (leapYear && (month == 2))
      monthLength += 1;

  return monthLength;
}

// Returns name of month
String nameOfMonth(int month) {    
  return months[month - 1];
}
