import 'package:flutter/material.dart';
import 'whats_auth_styles.dart';

class Authorizatoin extends StatefulWidget {
  const Authorizatoin({super.key});

  @override
  State<Authorizatoin> createState() => _AuthorizatoinState();
}

class _AuthorizatoinState extends State<Authorizatoin> {
  String? dropValue = 'United States';
  List<String> dropList = [
    'United States',
    'Turkey',
    'Greece',
    'Algeria',
    'İtaly'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          'Phone Number ',
          style: styleTexts,
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'DONE',
                style: styleTexts,
              )),
        ],
      ),
      body: Column(children: [
        SizedBox(
            width: 280,
            child: Text(
              'Please confirm your country code and  enter your phone number',
              textAlign: TextAlign.center,
              style: styleTexts,
            )),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            child: DropdownButton(
              isExpanded: true,
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
                size: 40,
              ),
              value: dropValue,
              onChanged: (newValue) {
                setState(() {
                  dropValue = newValue;
                });
              },
              items: dropList.map((String dropValue) {
                return DropdownMenuItem(
                  value: dropValue,
                  child: Text(
                    dropValue,
                    style: dropText,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 30),
                    decoration: InputDecoration(
                      hintText: '+1',
                      hintStyle: hintextStyle,
                    ),
                  ),
                )),
            const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 30),
                    decoration: InputDecoration(),
                  ),
                ))
          ],
        ),
      ]),
    );
  }
}
