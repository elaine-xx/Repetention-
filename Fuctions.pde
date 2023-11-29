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

  if (month > 1)
    daysSince2023 += 31;

  if (month > 2) {
    daysSince2023 += 28;

    if ((year % 4 == 0) && !(year % 100 == 0))
      daysSince2023 += 1;
  }

  if (month > 3)
    daysSince2023 += 31;

  if (month > 4)
    daysSince2023 += 30;

  if (month > 5)
    daysSince2023 += 31;

  if (month > 6)
    daysSince2023 += 30;

  if (month > 7)
    daysSince2023 += 31;

  if (month > 8)
    daysSince2023 += 31;

  if (month > 9)
    daysSince2023 += 30;

  if (month > 10)
    daysSince2023 += 31;

  if (month > 11)
    daysSince2023 += 30;

  int dayOfTheWeek = (daysSince2023 % 7);

  return dayOfTheWeek;
}






// Returns length of month
int lengthOfMonth(int year, int month) {
  int monthLength = 0;
  boolean leapYear = (year % 4 == 0) && !(year % 100 == 0);

  if (month == 1)
    monthLength = 31;

  if (month == 2) {
    monthLength = 28;

    if (leapYear)
      monthLength += 1;
  }

  if (month == 3)
    monthLength = 31;

  if (month == 4)
    monthLength = 30;

  if (month == 5)
    monthLength = 31;

  if (month == 6)
    monthLength = 30;

  if (month == 7)
    monthLength = 31;

  if (month == 8)
    monthLength = 31;

  if (month == 9)
    monthLength = 30;

  if (month == 10)
    monthLength = 31;

  if (month == 11)
    monthLength = 30;

  if (month == 12)
    monthLength = 31;

  return monthLength;
}




// Returns name of month
String nameOfMonth(int month) {
  String monthName = "";  

  if (month == 1)
    monthName = "January";

  if (month == 2)
    monthName = "February";

  if (month == 3)
    monthName = "March";

  if (month == 4)
    monthName = "April";

  if (month == 5)
    monthName = "May";

  if (month == 6)
    monthName = "June";

  if (month == 7)
    monthName = "July";

  if (month == 8)
    monthName = "August";

  if (month == 9)
    monthName = "September";

  if (month == 10)
    monthName = "October";

  if (month == 11)
    monthName = "November";

  if (month == 12)
    monthName = "December";

  return monthName;
}
