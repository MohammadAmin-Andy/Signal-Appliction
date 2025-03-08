import 'package:flutter/material.dart';
import 'package:signalvip_appliction/blog_page.dart';
import 'package:signalvip_appliction/fotgot_page.dart';
import 'package:signalvip_appliction/signin_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void navigate_pages(BuildContext context, var page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              spacing: 5,
              children: [
                Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'welcome',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Icon(Icons.login, color: Colors.black, size: 30),
                  ],
                ),
                Image(image: AssetImage('assets/images/w.png')),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: BorderSide(color: Colors.black, width: 2.5),
                  ),
                  onPressed: () {
                    navigate_pages(context, BlogScreen());
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(200, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    navigate_pages(context, SignInScreen());
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigate_pages(context, ForgotPassWordScreen());
                  },
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
