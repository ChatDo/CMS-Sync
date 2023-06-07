import 'package:cms_sync/main.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

int count = 50;
String email = 'lol';

void getHubspotRecentContacts() async {
  var url = '$hubspotHost/contacts/v1/lists/all/contacts/recent?count=$count';
  var response = await http.get(Uri.parse(url), headers: {
    "Authorization": "Bearer $hubspotApiKey",
  });
  print("Hubspot recent contact done: ${response.statusCode}");
  var data = await compute(jsonDecode, response.body);
  print(data);
}

void getHubspotContactByMail() async {
  var url = '$hubspotHost/contacts/v1/contact/email/${email}/profile';
  var response = await http.get(Uri.parse(url), headers: {
    "Authorization": "Bearer $hubspotApiKey",
  });
  print("Hubspot contact by mail done: ${response.statusCode}");
}