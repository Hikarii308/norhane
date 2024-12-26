import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants/images_strings.dart';
import '../widgets/loginhead.dart';
import 'loginScreen.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginHeader(
                  image: Logo,
                  title: 'Sign Up ',
                  subTitle: 'Create your profile here ',

                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              "Full Name",
                              style: GoogleFonts.poppins(color: Colors.black87),
                            ),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(LineAwesomeIcons.otter),
                            iconColor: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 13),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              "Email",
                              style: GoogleFonts.poppins(color: Colors.black87),
                            ),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(LineAwesomeIcons.envelope),
                            iconColor: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 13),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style: GoogleFonts.poppins(color: Colors.black87),
                            ),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(LineAwesomeIcons.fingerprint),
                            iconColor: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 13),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              "Phone Number",
                              style: GoogleFonts.poppins(color: Colors.black87),
                            ),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(LineAwesomeIcons.phone),
                            iconColor: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "SIGN UP",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Loginscreen()),
                            );
                          },
                          child: Text.rich(
                            TextSpan(
                              text: "Already have an account?",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: " log in",
                                  style: GoogleFonts.poppins(
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
