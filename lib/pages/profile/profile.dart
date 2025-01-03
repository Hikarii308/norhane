import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'dart:ui';

import '../../constants/images_strings.dart';
import 'package:chat/pages/profile/aboutus.dart';
import 'package:chat/pages/profile/help.dart';
import 'package:chat/pages/profile/profile_edit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [

                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Profilepic4),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(color: Colors.transparent),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(LineAwesomeIcons.angle_double_left, color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HelpPage()),
                      );
                    },
                    icon: const Icon(LineAwesomeIcons.question_circle_1, color: Colors.white),
                  ),
                ),

                Positioned(
                  top: 150,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          "Park Serim",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "ParkSerim@gmail.com",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "somewhere in seoul",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 110, 
                  left: MediaQuery.of(context).size.width / 2 - 60,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: const AssetImage(Profilepic3),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 140),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileEdit()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              icon: const Icon(LineAwesomeIcons.user_edit, color: Colors.black87),
              label: Text(
                "Edit Profile",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),



            Column(
              children: [
                menuprofile(
                  title: "Personal Details",
                  icon: LineAwesomeIcons.user,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileEdit()),
                    );
                  },
                  endIcon: false,
                ),
                menuprofile(
                  title: "Favorites",
                  icon: LineAwesomeIcons.heart,
                  onPress: () {},
                  endIcon: false,
                ),
                menuprofile(
                  title: "About Us",
                  icon: LineAwesomeIcons.info,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Aboutus()),
                    );
                  },
                  endIcon: false,
                ),
                menuprofile(
                  title: "Logout",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  onPress: () {},
                  endIcon: true,
                  textcolor: Colors.red,
                ),
              ],
            ),

            const SizedBox(height: 20),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(LineAwesomeIcons.facebook, color: Colors.grey),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(LineAwesomeIcons.instagram, color: Colors.grey),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(LineAwesomeIcons.twitter, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class StatisticCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color backgroundColor;

  const StatisticCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 22, color: Colors.white),
            const SizedBox(height: 5),
            Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              value,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.white), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class menuprofile extends StatelessWidget {
  const menuprofile({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    required this.endIcon,
    this.textcolor,
    this.iconBackground,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textcolor;
  final Color? iconBackground;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: iconBackground ?? Colors.amber,
        ),
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ).apply(color: textcolor),
      ),
      trailing: endIcon
          ? Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white54,
        ),
        child: const Icon(
          LineAwesomeIcons.arrow_circle_right,
          color: Colors.black,
          size: 18,
        ),
      )
          : null,
    );
  }
}
