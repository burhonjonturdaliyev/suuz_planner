import 'package:suuz/const/titles.dart';
import 'package:suuz/model/subject_model.dart';

class BTECH3 {
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
class BTECH2{
  List<SubjectModel> monday=[];
  List<SubjectModel> tuesday=[];
  List<SubjectModel> wednesday=[];
  List<SubjectModel> thursday=[];
  List<SubjectModel> friday=[];
}
class BTECH4{
  List<SubjectModel> monday=[
    SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSC042/CSI042',
        fullName: BTECH4subject().CSC042+' '+BTECH4subject().CS1053,
        teacher: StaffName().Vivek+ ' '+StaffName().Ramkumar),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSE411',
        fullName: BTECH4subject().CSE411,
        teacher: StaffName().Pooja),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
    SubjectModel(
        time: "14:00\n14:55",
        courseCode: 'CSC041',
        fullName: BTECH4subject().CSC041,
        teacher: StaffName().Vivek),  SubjectModel(
        time: "15:00\n15:55",
        courseCode: 'UCD411',
        fullName: BTECH4subject().UCD422,
        teacher: StaffName().Ramkumar),
  
  ];
  List<SubjectModel> tuesday=[
     SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSC042/CSI042',
        fullName: BTECH4subject().CSC042+' '+BTECH4subject().CS1053,
        teacher: StaffName().Vivek+ ' '+StaffName().Ramkumar),
    SubjectModel(
        time: "11:00\n11:55",
        courseCode: 'CSE411',
        fullName: BTECH4subject().CSE411,
        teacher: StaffName().Pooja),
        SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'HMM421',
        fullName: BTECH4subject().HMM421,
        teacher: StaffName().Gabriel),
    SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: "")

  ];
  List<SubjectModel> wednesday=[
    SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'CSE411',
        fullName: BTECH4subject().CSE411,
        teacher: StaffName().Pooja),
     SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSC042/CSI042',
        fullName: BTECH4subject().CSC042+' '+BTECH4subject().CS1053,
        teacher: StaffName().Vivek+ ' '+StaffName().Ramkumar),
   
    SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'CC(Google)'.toUpperCase(),
        fullName: BTECH4subject().Google,
        teacher: StaffName().Vivek),
   
  ];
  List<SubjectModel> thursday=[
      
    SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'CC(Google)'.toUpperCase(),
        fullName: BTECH4subject().Google,
        teacher: StaffName().Vivek),
     SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSC041',
        fullName: BTECH4subject().CSC041,
        teacher: StaffName().Vivek),
        SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'Liburary'.toUpperCase(),
        fullName: "",
        teacher: ""),
         SubjectModel(
        time: "12:00\n12:55",
        courseCode: 'HMM421',
        fullName: BTECH4subject().HMM421,
        teacher: StaffName().Gabriel), SubjectModel(
        time: "13:00\n14:00",
        courseCode: 'Launch Time',
        fullName: "",
        teacher: ""),
         SubjectModel(
        time: "14:00\n15:55",
        courseCode: 'UCD411 presentaion'.toUpperCase(),
        fullName: BTECH4subject().UCD422,
        teacher: StaffName().Ramkumar)
  ];
  List<SubjectModel> friday=[
     SubjectModel(
        time: "09:00\n09:55",
        courseCode: 'CSE411'.toUpperCase(),
        fullName: BTECH4subject().CSE411,
        teacher: StaffName().Pooja),
     SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'CSC041',
        fullName: BTECH4subject().CSC041,
        teacher: StaffName().Vivek),
        SubjectModel(
        time: "10:00\n10:55",
        courseCode: 'UCD411'.toUpperCase(),
        fullName: BTECH4subject().UCD422,
        teacher: StaffName().Ramkumar),
  ];
}