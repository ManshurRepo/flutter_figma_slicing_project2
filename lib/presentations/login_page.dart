import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma_slicind_one/presentations/profile_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          //background
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/bg_login.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(300, 100, 0, 300),
            child: Container(
              width: 115,
              height: 65,
              child: Image.asset('assets/images/cloud_1.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(220, 60, 0, 300),
            child: Container(
              width: 37,
              height: 21,
              child: Image.asset('assets/images/cloud_2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 45, 0, 300),
            child: Container(
              width: 37,
              height: 21,
              child: Image.asset('assets/images/cloud_2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 145, 100, 300),
            child: Container(
              width: 37,
              height: 21,
              child: Image.asset('assets/images/cloud_2.png'),
            ),
          ),

          //layerbody
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                //background
                Container(
                  // color: Colors.yellow,
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/pic_login_1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 20, color: Color(0xff22215B)),
                ),
                const Text(
                  'Dird Box',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff22215B)),
                ),
                SizedBox(height: 10),
                Container(
                  width: 223,
                  child: const Text(
                    'Best cloud storage platform for all business and individuals to manage there data \n\nJoin For Free.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7B7F9E)),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fixedSize: const Size(150, 50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/finger.png'),
                            const SizedBox(width: 10),
                            const Text('Smart ID',
                                style: TextStyle(
                                  color: Color(0xff567DF4),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfilePage()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff567DF4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: const Size(150, 50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Sign In',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                )),
                            const SizedBox(width: 10),
                            Image.asset('assets/icons/panah_login.png')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),

                Center(
                  child: Text(
                    'Use Social Login',
                    style: TextStyle(fontSize: 12, color: Color(0xff1B1D28)),
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/instagram.png',
                      width: 17.9,
                      height: 17.9,
                    ),
                    SizedBox(width: 87),
                    Image.asset(
                      'assets/icons/twitter.png',
                      width: 18,
                      height: 15,
                    ),
                    SizedBox(width: 87),
                    Image.asset(
                      'assets/icons/facebook.png',
                      width: 10,
                      height: 18,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                    child: Text(
                  'Create an Account',
                  style: TextStyle(fontSize: 16, color: Color(0xff1B1D28)),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
