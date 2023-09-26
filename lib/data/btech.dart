import 'package:suuz/const/titles.dart';
import 'package:suuz/model/subject_model.dart';

class BTECH {
  List<SubjectModel> monday = [
    SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'CSE311',
        fullName: BTECH3subject().CSE311,
        teacher: StaffName().NF),
    SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSE312',
        fullName: BTECH3subject().CSE312,
        teacher: StaffName().Nodirbek),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSE313',
        fullName: BTECH3subject().CSE313,
        teacher: StaffName().NF),
    SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'CSC021',
        fullName: BTECH3subject().CSC021,
        teacher: StaffName().Vivek),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
        time: "14:00\n14:55",
        courseCode: 'CSC022/CSA022',
        fullName: "${BTECH3subject().CSC022}/${BTECH3subject().CSA022}",
        teacher: "${StaffName().NF}/${StaffName().Pooja}"),
  ];
  List<SubjectModel> tuesday = [
    SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'CSE311',
        fullName: BTECH3subject().CSE311,
        teacher: StaffName().NF),
    SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'CSC021',
        fullName: BTECH3subject().CSC021,
        teacher: StaffName().Vivek),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
      time: "14:00\n14:55",
      courseCode: 'CSE311LAB021',
      fullName: BTECH3subject().CSE311,
      teacher: StaffName().NF,
    ),
  ];
  List<SubjectModel> wednesday = [
    SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'CSE311',
        fullName: BTECH3subject().CSE311,
        teacher: StaffName().NF),
    SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSE312/CSE313 LAB',
        fullName: BTECH3subject().CSE312 + '/' + BTECH3subject().CSE313,
        teacher: StaffName().Nodirbek + '/' + StaffName().NF),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSE312/CSE313 LAB',
        fullName: BTECH3subject().CSE312 + '/' + BTECH3subject().CSE313,
        teacher: StaffName().Nodirbek + '/' + StaffName().NF),
    SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'CSE313',
        fullName: BTECH3subject().CSE313,
        teacher: StaffName().NF),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
      time: "14:00\n14:55",
      courseCode: 'CSE311LAB021',
      fullName: BTECH3subject().CSE311,
      teacher: StaffName().NF,
    ),
  ];
  List<SubjectModel> thursday = [
    SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSE312/CSE313 LAB',
        fullName: BTECH3subject().CSE312 + '/' + BTECH3subject().CSE313,
        teacher: StaffName().Nodirbek + '/' + StaffName().NF),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSE312/CSE313 LAB',
        fullName: BTECH3subject().CSE312 + '/' + BTECH3subject().CSE313,
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
      fullName: BTECH3subject().CSE314,
      teacher: StaffName().Vivek,
    ),
    SubjectModel(
      time: "15:00\n115:55",
      courseCode: 'CSE314-PBL-022',
      fullName: BTECH3subject().CSE314,
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
        fullName: BTECH3subject().CSC022,
        teacher: StaffName().NF),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSA022',
        fullName: BTECH3subject().CSA022,
        teacher: StaffName().Pooja),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
      time: "14:00\n14:55",
      courseCode: 'CSE314-PBL-022',
      fullName: BTECH3subject().CSE314,
      teacher: StaffName().Vivek,
    ),
    SubjectModel(
      time: "15:00\n115:55",
      courseCode: 'CSE314-PBL-022',
      fullName: BTECH3subject().CSE314,
      teacher: StaffName().Vivek,
    ),
  ];
}
