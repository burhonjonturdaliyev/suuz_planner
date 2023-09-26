class SubjectModel {
  String time;
  String courseCode;
  String fullName;
  String teacher;
  int? room;
  SubjectModel(
      {required this.time,
      required this.courseCode,
      required this.fullName,
      required this.teacher,
      this.room});
}
