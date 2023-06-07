import 'package:cms_sync/main.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  getAllAxonautCompanies();
}

void getAllAxonautCompanies() async {
  var url = '$axoHost/api/v2/companies';
  var response = await http
      .get(Uri.parse(url), headers: {"Content-Type": "application/json", "Page": '1', "userApiKey": axoApiKey});
  var data = await compute(jsonDecode, response.body);
  print(data);
  return data;
}

void doesCompanyExist() {}

void createAxoCompany(dynamic infos) async {
  /*
   INFOS WOULD BE:
    {
      "name": `${company}`,
      "address_contact_name": "",
      "address_street": "",
      "address_zip_code": `${zip}`,
      "address_city": `${city}`,
      "address_country": `${country}`,
      "is_prospect": true,
      "is_customer": false,
      "currency": "EUR",
      "thirdparty_code": "",
      "intracommunity_number": "",
      "siret": "",
      "comments": "Created by MailAPI",
      "custom_fields": {},
      "categories": [
          ""
      ],
      "internal_id": "",
      "business_manager": ""
    }
  */
  var url = '$axoHost/api/v2/companies';
  var response = await http.post(Uri.parse(url),
      headers: {'Content-Type': 'application/json', 'Content-Length': infos.length, 'userApiKey': axoApiKey});
  var data = await compute(jsonDecode, response.body);
  print(data);
  return data;
}

void createAxonautContact(dynamic infos) async {
  var url = '$axoHost/api/v2/employees';
  var response = await http.get(Uri.parse(url),
      headers: {'Content-Type': 'application/json', 'Content-Length': infos.length, 'userApiKey': axoApiKey});
  var data = await compute(jsonDecode, response.body);
  print(data);
  return data;
}

class AxoCompany {
  String name;
  String address;
  String zipcode;
  String city;
  String country;
  List<String> employees;

  AxoCompany(
      {required this.name,
      required this.address,
      required this.zipcode,
      required this.city,
      required this.country,
      required this.employees});

  AxoCompany.fromJSON(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        zipcode = json['zipcode'],
        city = json['city'],
        country = json['country'],
        employees = json['employees'];
}
