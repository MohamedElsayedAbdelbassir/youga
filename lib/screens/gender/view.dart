import 'package:flutter/material.dart';
import 'package:youga/screens/goal/view.dart';
import 'package:youga/screens/level/view.dart';

class GenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LevelScreen()),
              (route) => true);
        },
        child: Icon(
          Icons.reply_outlined,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            Image(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOmi3_sTD2JQHDMs2zOzLyGfEkx4wCohNzxA&usqp=CAU'),
            ),
            Text(
              'What is your gender?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Let us known you better',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Male'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Female'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Non-binary'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => GoalScreen()),
                    (route) => true);
              },
              child: Text(
                'CONTINUE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
