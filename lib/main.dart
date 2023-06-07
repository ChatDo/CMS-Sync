import 'package:flutter/material.dart';

const axoHost = 'https://axonaut.com';
const hubspotHost = 'https://hubspot.com';
const axoApiKey = '8e0f99fc4e17861c90fc601beae0e423';
const hubspotApiKey = '82706d2c-4ea3-41ee-a394-0bd71c386810';

void main() {
  runApp(CMSync());
}

class CMSync extends StatefulWidget {
  CMSync({super.key});

  @override
  State<StatefulWidget> createState() => CMSyncState();
}

class CMSyncState extends State<CMSync> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
