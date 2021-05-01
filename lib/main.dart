import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MasterCardPay(),
    );
  }
}

class MasterCardPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Naira card',
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Placeholder(
                      fallbackHeight: 50,
                      fallbackWidth: 50,
                    ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 16,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 140,
                      child: TextField(
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        smartDashesType: SmartDashesType.enabled,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'mm/yy',
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 16,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    Text(
                      'Delete card',
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
