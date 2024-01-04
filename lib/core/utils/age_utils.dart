class AgeUtils{

  int calculateAge(String dob){
    var dateOfBirth=  DateTime.parse(dob);
    var currentDate = DateTime.now();
    return currentDate.year - dateOfBirth.year;
  }

}