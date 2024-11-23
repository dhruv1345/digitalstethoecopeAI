import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mboathoscope/buttons/RecordingList.dart';
import 'package:mboathoscope/buttons/headerHalf.dart';

import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import 'package:audio_waveforms/audio_waveforms.dart';

import '../buttons/app_body.dart';
import '../buttons/textButton.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<dynamic> records = [];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F7FF),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            headerHalf(),
            Homebody(),
            // RecordingList()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffF3F7FF),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor:  Color(0xffF3F7FF),
            icon: ImageIcon(
              AssetImage("assets/images/img_profile.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/img_explore.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/img_recordings.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/img_setting.png"),
            ),
            label: '',
          )
        ],
        selectedItemColor:  const Color(0xff3D79FD),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}








