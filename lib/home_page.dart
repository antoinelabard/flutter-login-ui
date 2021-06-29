import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = "home-page";
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: "hero",
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );
    
    final welcome = Padding(padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Alucard',
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),);
    final lorem = Padding(padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis suscipit tortor sed est pharetra, eget gravida dui vulputate. Praesent euismod elit quis vestibulum consequat. Nulla consectetur aliquam enim, ac interdum nisi suscipit rhoncus. Sed fermentum quam in odio dignissim tincidunt. Aliquam quis tortor et felis lacinia posuere. Nunc et sodales elit, in tincidunt velit. In maximus interdum nisi eu pellentesque. Donec at purus porttitor, fringilla eros in, condimentum felis. Morbi pulvinar dapibus volutpat. Donec tristique nisi quis dolor accumsan, quis blandit nisl auctor. Nullam vel tempus augue. ',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),);

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.blueAccent
          ]
        ),
      ),
    child: Column(
      children: [
        alucard,
        welcome,
        lorem
      ],
    ),);
    return Scaffold(
      body: body,
    );
  }

}