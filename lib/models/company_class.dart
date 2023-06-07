class Company {
  String name;
  String addressContact = "";
  String addressStreet = "";
  String zip;
  String city;
  String country;
  bool isProspect = true;
  bool isCustomer = false;
  String currency = "EUR";
  String comments = "Created by CM-Sync";
  dynamic customFields = {};
  List<String> categories = [""];
  String internalId = "";
  String businessManager = "CM-Sync";

  Company({
    required this.name,
    required this.zip,
    required this.city,
    required this.country,
  });
}
