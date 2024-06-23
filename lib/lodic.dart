class NationalIdAnalysis {
  List<String> analysis(String nationalID) {
    // example 14-digit number

    // Check if the number is valid
    if (nationalID.length != 14) {
      print("Invalid number. It should be exactly 14 digits long.");
    }

    // Extracting information from the number
    String centuryCode = nationalID.substring(0, 1);
    String yearDigit = nationalID.substring(1, 3);
    String month = nationalID.substring(3, 5);
    String day = nationalID.substring(5, 7);
    String cityCode = nationalID.substring(7, 9);
    String sequence = nationalID.substring(9, 13);

    String genderDigit = sequence.substring(3, 4);

    // Determine century based on century code
    String century;
    switch (centuryCode) {
      case "2":
        century = "1900-1999";
        break;
      case "3":
        century = "2000-2099";
        break;
      default:
        print("this id is wrong becuse the first digit should be 2 or 3");
        return [];
    }
    var currDate = DateTime.now();
    String year;
    if (century == "2000-2099") {
      if (int.parse(yearDigit) > (currDate.year - 2000)) {
        print("this id is wrong becuse exist wrong in digit 2 or 3");
        return [];
      } else {
        year = "20${yearDigit}";
      }
    } else {
      year = "19${yearDigit}";
    }

    if (int.parse(month) > 12) {
      print("this id is wrong becuse exist wrong in digit 4 or 5");
      return [];
    }
    if (int.parse(day) > 31) {
      print("this id is wrong becuse exist wrong in digit 6 or 7");
      return [];
    }
    String gender = "ذكر";
    if (int.parse(genderDigit) % 2 == 0) {
      gender = "أنثي";
    }
    // Determine city based on city code
    String city;
    switch (cityCode) {
      case "01":
        city = "القاهرة";
        break;
      case "02":
        city = "الإسكندرية";
        break;
      case "03":
        city = "بور سعيد";
        break;
      case "04":
        city = "السويس";
        break;
      case "11":
        city = "دمياط";
        break;
      case "12":
        city = "الدقهلية";
        break;
      case "13":
        city = "الشرقية";
        break;
      case "14":
        city = "القليوبية";
        break;
      case "15":
        city = "شرم الشيخ";
        break;
      case "16":
        city = "الغربية";
        break;
      case "17":
        city = "المنوفية";
        break;
      case "18":
        city = "البحيرة";
        break;
      case "19":
        city = "الاسماعيلية";
        break;
      case "21":
        city = "الجيزة";
        break;
      case "22":
        city = "بني سويف";
        break;
      case "23":
        city = "الفيوم";
        break;
      case "24":
        city = "المنيا";
        break;
      case "25":
        city = "أسيوط";
        break;
      case "26":
        city = "سوهاج";
        break;
      case "27":
        city = "قنا";
        break;
      case "28":
        city = "أسوان";
        break;
      case "29":
        city = "الأقصر";
        break;
      case "31":
        city = "البحر الاحمر";
        break;
      case "32":
        city = "الوادي الجديد";
        break;
      case "33":
        city = "مطروح";
        break;
      case "34":
        city = "شمال سيناء";
        break;
      case "35":
        city = "جنوب سيناء";
        break;
      default:
        print("this id is wrong becuse exist wrong in digit 8 or 9");
        return [];
    }
    String dateBarth = "$day / $month / $year";
    List<String> myData = [
      century,
      year,
      month,
      day,
      city,
      gender,
      sequence,
      dateBarth
    ];
    return myData;
  }
}
