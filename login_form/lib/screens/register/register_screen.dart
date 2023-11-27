import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_form/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_form/widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      /// body
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/image2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Container(
                height: height * 0.55,
                width: height * 0.5,
                padding: EdgeInsets.symmetric(horizontal: height * 0.03),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: AppColors.kBorderColor,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// heading
                    SizedBox(height: height * 0.02),
                    Text(
                      'Register',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: height * 0.03,
                      ),
                    ),

                    /// name field
                    SizedBox(height: height * 0.03),
                    CustomTextField(
                      controller: nameController,
                      hintText: 'Enter your name',
                    ),

                    /// email field
                    SizedBox(height: height * 0.01),
                    CustomTextField(
                      controller: emailController,
                      hintText: 'Enter your email',
                    ),

                    /// password field
                    SizedBox(height: height * 0.01),
                    CustomTextField(
                      controller: passwordController,
                      obscureText: true,
                      hintText: 'Enter your password',
                    ),

                    /// confirm password field
                    SizedBox(height: height * 0.01),
                    CustomTextField(
                      controller: confirmPassController,
                      obscureText: true,
                      hintText: 'Enter password again',
                    ),

                    /// btn
                    SizedBox(height: height * 0.04),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.kButtonColor,
                        minimumSize: const Size.fromHeight(52),
                      ),
                      child: Center(
                        child: Text(
                          'Register',
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    /// already account
                    SizedBox(height: height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(onPressed: (){}, child: Text('Login',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
