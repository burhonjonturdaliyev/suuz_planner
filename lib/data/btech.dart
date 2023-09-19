import 'package:suuz/const/titles.dart';
import 'package:suuz/model/subject_model.dart';

class BTECH {
  List<SubjectModel> monday = [
    SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'CSE311',
        fullName: CourseName().CSE311,
        teacher: StaffName().NF),
    SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSE312',
        fullName: CourseName().CSE312,
        teacher: StaffName().Nodirbek),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSE313',
        fullName: CourseName().CSE313,
        teacher: StaffName().NF),
    SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'CSC021',
        fullName: CourseName().CSC021,
        teacher: StaffName().Vivek),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
        time: "14:00\n14:55",
        courseCode: 'CSC022/CSA022',
        fullName: "${CourseName().CSC022}/${CourseName().CSA022}",
        teacher: "${StaffName().NF}/${StaffName().Pooja}"),
  ];
  List<SubjectModel> tuesday = [
    SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'CSE311',
        fullName: CourseName().CSE311,
        teacher: StaffName().NF),
    SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'CSC021',
        fullName: CourseName().CSC021,
        teacher: StaffName().Vivek),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
      time: "14:00\n14:55",
      courseCode: 'CSE311LAB021',
      fullName: CourseName().CSE311,
      teacher: StaffName().NF,
    ),
  ];
  List<SubjectModel> wednesday = [
    SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'CSE311',
        fullName: CourseName().CSE311,
        teacher: StaffName().NF),
    SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSE312/CSE313 LAB',
        fullName: CourseName().CSE312 + '/' + CourseName().CSE313,
        teacher: StaffName().Nodirbek + '/' + StaffName().NF),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSE312/CSE313 LAB',
        fullName: CourseName().CSE312 + '/' + CourseName().CSE313,
        teacher: StaffName().Nodirbek + '/' + StaffName().NF),
    SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'CSE313',
        fullName: CourseName().CSE313,
        teacher: StaffName().NF),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
      time: "14:00\n14:55",
      courseCode: 'CSE311LAB021',
      fullName: CourseName().CSE311,
      teacher: StaffName().NF,
    ),
  ];
  List<SubjectModel> thursday = [
    SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSE312/CSE313 LAB',
        fullName: CourseName().CSE312 + '/' + CourseName().CSE313,
        teacher: StaffName().Nodirbek + '/' + StaffName().NF),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSE312/CSE313 LAB',
        fullName: CourseName().CSE312 + '/' + CourseName().CSE313,
        teacher: StaffName().Nodirbek + '/' + StaffName().NF),
    SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'CSE313',
        fullName: 'Libruary',
        teacher: ''),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
      time: "14:00\n14:55",
      courseCode: 'CSE314-PBL-022',
      fullName: CourseName().CSE314,
      teacher: StaffName().Vivek,
    ),
    SubjectModel(
      time: "15:00\n115:55",
      courseCode: 'CSE314-PBL-022',
      fullName: CourseName().CSE314,
      teacher: StaffName().Vivek,
    ),
  ];
  List<SubjectModel> friday = [
    SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'Mentoring',
        fullName: '',
        teacher: ''),
    SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSC022',
        fullName: CourseName().CSC022,
        teacher: StaffName().NF),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSA022',
        fullName: CourseName().CSA022,
        teacher: StaffName().Pooja),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
      time: "14:00\n14:55",
      courseCode: 'CSE314-PBL-022',
      fullName: CourseName().CSE314,
      teacher: StaffName().Vivek,
    ),
    SubjectModel(
      time: "15:00\n115:55",
      courseCode: 'CSE314-PBL-022',
      fullName: CourseName().CSE314,
      teacher: StaffName().Vivek,
    ),
  ];
}
