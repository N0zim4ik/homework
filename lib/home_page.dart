import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCH = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFEAF1F7),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 100,
              ),
              child: Text(
                'Currency Converter',
                style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFF1F2261),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Check live rates, set rate alerts, receive\n              notifications and more.',
                style: TextStyle(
                  color: Color(0xFF808080),
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
                left: 55,
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: 400,
                    width: 450,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 80,
                      left: 30,
                    ),
                    child: DropdownMenu(
                      width: 150,
                      dropdownMenuEntries: [
                        DropdownMenuEntry(value: 'UZS', label: 'UZS'),
                        DropdownMenuEntry(value: 'RUB', label: 'Rub'),
                        DropdownMenuEntry(value: 'USD', label: 'USD'),
                        DropdownMenuEntry(value: 'KZT', label: 'KZT'),
                      ],
                      initialSelection: 'UZS',
                      label: Text('Amount'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 220,
                      top: 80,
                      right: 100,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 35,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 35,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 250,
                      left: 30,
                    ),
                    child: DropdownMenu(
                      width: 150,
                      dropdownMenuEntries: [
                        DropdownMenuEntry(value: 'UZS', label: 'UZS'),
                        DropdownMenuEntry(value: 'RUB', label: 'Rub'),
                        DropdownMenuEntry(value: 'USD', label: 'USD'),
                        DropdownMenuEntry(value: 'KZT', label: 'KZT'),
                      ],
                      initialSelection: 'UZS',
                      label: Text('Amount'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 220,
                      top: 250,
                      right: 100,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 35,
                          ),

                        ),

                      ),
                      enabled: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
