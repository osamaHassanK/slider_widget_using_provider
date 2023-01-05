
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:slider_widget_using_provider/provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SecondProvider>(context, listen: true);
    print(provider.value*100);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "flutter With Osama",
          style: GoogleFonts.sacramento(
              letterSpacing: 6,
              color: Colors.white.withOpacity(provider.value),
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        ),
        backgroundColor: Colors.black,
        titleSpacing: 27,
        centerTitle: true,
      ),
      body: Container(
        decoration:BoxDecoration(image: DecorationImage(image:AssetImage("assets/screenbackground.jpg"),fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                "Slider Widget Example Using Provider State Management...",
                style: GoogleFonts.yeonSung(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10,width: double.infinity),
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 130,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  provider.value.toString(),
                  style: GoogleFonts.merriweather(
                    fontSize: 25.0,
                    color: Colors.white.withOpacity(provider.value),
                  ),
                ),
              ),
            ),
            SizedBox(height: 90,width: double.infinity),
            SliderTheme(
              data: SliderThemeData(
                  thumbColor: Colors.black,
                  activeTrackColor: Colors.black,
                  disabledActiveTickMarkColor: Colors.greenAccent),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Slider(
                    label: provider.value.toString(),
                    divisions: 100,
                    min: 0.0,
                    max: 1.0,
                    value: provider.value,
                    onChanged: (val) {
                      provider.setValue(val);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
