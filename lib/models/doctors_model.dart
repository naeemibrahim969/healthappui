class DoctorModel{
  final String name;
  final String position;
  final int averageRatting;
  final int totalReviews;
  final String profileImage;

  DoctorModel(this.name, this.position, this.averageRatting, this.totalReviews, this.profileImage);

}

List<DoctorModel> nearbyDoctors = [
  DoctorModel("Dr. Muhammad Kamran", "Surgeon", 3, 231, "assets/doctor_1.jpg"),
  DoctorModel("Dr. Hassan Ali", "General Practitioner", 5, 197, "assets/doctor_2.jpg"),
  DoctorModel("Dr. Kiran Mumtaz", "Dental Specialist", 4, 166, "assets/doctor_3.jpg"),
  DoctorModel("Dr. Farooq Rana", "Dental Specialist", 5,336, "assets/doctor_1.jpg"),
  DoctorModel("Dr. Sana Iqbal", "Surgeon", 4, 432, "assets/doctor_3.jpg"),
  DoctorModel("Dr. Ali Mumtaz", "General Practitioner", 5,366, "assets/doctor_2.jpg"),

];