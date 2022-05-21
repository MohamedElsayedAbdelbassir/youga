import 'package:flutter/material.dart';

import '../login/view.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LoginScreen()),
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
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(
                  Icons.person,
                ),
                hintText: 'User name',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(
                  Icons.email,
                ),
                hintText: 'Email',
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(
                  Icons.lock_sharp,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                ),
                hintText: 'password',
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(
                  Icons.lock_sharp,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                ),
                hintText: 'Confirm password',
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or Connect With ",
                  style: TextStyle(
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.facebook),
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.tiktok),
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.whatsapp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
