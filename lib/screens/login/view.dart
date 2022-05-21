import 'package:flutter/material.dart';
import 'package:youga/screens/level/view.dart';
import 'package:youga/screens/register/view.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Icons.email_outlined,
                ),
                hintText: 'E-mail',
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
            Text(
              'Forget Password?',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.cyan,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => LevelScreen()),
                    (route) => true);
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account? ",
                  style: TextStyle(
                    color: Colors.cyan,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                          (route) => true);
                    },
                    child: Text('SIGN UP')),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Or Connect With ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.cyan,
              ),
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
