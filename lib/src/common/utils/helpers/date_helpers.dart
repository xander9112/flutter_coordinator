bool isBirthday(DateTime? birthday, DateTime date) {
  if (birthday == null) {
    return false;
  }

  return birthday.month == date.month && birthday.day == date.day;
}

int getMonthSizeBetweenDates(DateTime initialDate, DateTime endDate) {
  return calculateMonthSize(endDate) - calculateMonthSize(initialDate);
}

int calculateMonthSize(DateTime dateTime) {
  return dateTime.year * 12 + dateTime.month;
}

bool isAnniversary(
  DateTime? workInCompany,
  DateTime date,
  int years, {
  bool onlyYear = false,
}) {
  if (workInCompany == null) {
    return false;
  }

  if (onlyYear) {
    return getMonthSizeBetweenDates(workInCompany, date) == years * 12;
  }

  return workInCompany.month == date.month &&
      workInCompany.day == date.day &&
      getMonthSizeBetweenDates(workInCompany, date) == years * 12;
}

class DateDifference {
  DateDifference({this.years = 0, this.months = 0, this.days = 0});

  int years;
  int months;
  int days;

  @override
  String toString() {
    return '{ years: $years, months: $months, days: $days }';
  }
}

DateDifference getTheDateDifference(DateTime date) {
  final DateTime now = DateTime.now();

  int years = now.year - date.year;
  int months = now.month - date.month;
  int days = now.day - date.day;

  if (months < 0 || (months == 0 && days < 0)) {
    years--;
    months += days < 0 ? 11 : 12;
  }

  if (days < 0) {
    final DateTime monthAgo = DateTime(now.year, now.month - 1, date.day);
    days = now.difference(monthAgo).inDays + 1;
  }

  return DateDifference(years: years, months: months, days: days);
}

bool isWeekend(DateTime date) {
  return date.weekday == 6 || date.weekday == 7;
}

DateTime getFirstDateForLogTime() {
  DateTime now = DateTime.now();

  DateTime firstDate = DateTime(now.year, now.month);

  if (now.day < 4) {
    firstDate = DateTime(now.year, now.month - 1);
  }

  // if (now.difference(firstDate).inDays < 7) {
  //   firstDate = firstDate
  //       .subtract(Duration(days: 20 - now.difference(firstDate).inDays));
  // }

  return firstDate;
}

DateTime getLastDateForLogTime() {
  DateTime now = DateTime.now();

  DateTime lastDate = DateTime(now.year, now.month + 1, 0);

  if (lastDate.difference(now).inDays < 7) {
    lastDate = DateTime(now.year, now.month, now.day + 7);
  }

  return lastDate;
}

bool isSameDay(DateTime a, DateTime b) {
  return (a.year == b.year) && (a.month == b.month) && (a.day == b.day);
}
