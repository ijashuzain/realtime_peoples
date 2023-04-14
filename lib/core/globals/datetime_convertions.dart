String formatDateTimeToString(DateTime date) {
  final monthNames = ['', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  return '${date.day} ${monthNames[date.month]} ${date.year}';
}

DateTime parseStringToDateTime(String dateString) {
  final parts = dateString.split(' ');
  final day = int.parse(parts[0]);
  final monthNames = {'Jan': 1, 'Feb': 2, 'Mar': 3, 'Apr': 4, 'May': 5, 'Jun': 6, 'Jul': 7, 'Aug': 8, 'Sep': 9, 'Oct': 10, 'Nov': 11, 'Dec': 12};
  final month = monthNames[parts[1]];
  final year = int.parse(parts[2]);
  return DateTime(year, month!, day);
}
