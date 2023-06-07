
class Employee {
  int gender = 0;
  String firstName;
  String lastName;
  String email;
  String phone = "";
  String mobile;
  String job = "";
  dynamic customFields = {};

  Employee({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.mobile,
  });

  Employee.fromJSON(Map<String, dynamic> json) :
        firstName = json['firstName'],
        lastName = json['lastName'],
        email = json['email'],
        mobile = json['mobile'];
}