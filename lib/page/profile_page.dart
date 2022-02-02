import 'package:bwa_dormitory/style/style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final List<String> listImage = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/primary.png',
                  width: 140,
                  height: 140,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Anne Margaritha',
                  style: TextStyle(
                    color: black,
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'UX Designer',
                  style: TextStyle(
                    color: grey,
                    fontWeight: reguler,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Wrap(
                  spacing: 30,
                  runSpacing: 40,
                  children: List.generate(
                    listImage.length,
                    (index) => Image.asset(
                      'assets/${listImage[index]}.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 70),
                  child: Container(
                    height: 55,
                    width: 220,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(16)),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )),
                      onPressed: () {},
                      child: Text(
                        'Update Profile',
                        style: TextStyle(
                          color: black,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
