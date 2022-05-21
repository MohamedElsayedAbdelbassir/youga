import 'package:flutter/material.dart';
import 'package:youga/screens/gender/view.dart';

class GoalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => GenderScreen()),
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
              'What is your goal?',
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
              child: Text('Weight loss'),
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
              child: Text('Better sleep quality'),
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
              child: Text('Body relax'),
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
              child: Text('Posture correction'),
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
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (context) => GenderScreen()),
                //     (route) => true);
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
