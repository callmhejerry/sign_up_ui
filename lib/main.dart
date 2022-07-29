import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: const SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 88.h,
            ),
            Image.asset(
              "assets/Vectorlogo.png",
              width: 40,
              height: 40,
            ),
            SizedBox(
              height: 48.h,
            ),
            SizedBox(
              height: 34.h,
              width: 343.w,
              child: Text(
                "Meow!",
                style: TextStyle(
                  fontSize: 28.sp,
                  letterSpacing: 0.36.w,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              height: 42.h,
              width: 325.w,
              child: Text(
                "Welcome to our adoption app! \n i hope you'll find what your are looking for!",
                style: TextStyle(
                  fontSize: 16.sp,
                  letterSpacing: -0.32.w,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 48.h,
            ),
            SizedBox(
              height: 301.h,
              child: Form(
                child: Column(children: [
                  const InputField(
                    hintText: "User name",
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const InputField(
                    hintText: "Email",
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const InputField(
                    hintText: "Password",
                    icon: Icon(Icons.visibility),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xfff86601),
                      fixedSize: Size(343.w, 54.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.35.w,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/Facebook Logo.png"),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        "Sign up with Facebook",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff1c1c1e),
                          letterSpacing: -0.32.w,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 116.h,
            ),
            SizedBox(
              height: 49.h,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account?",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: const Color(0xff3c3c43).withOpacity(0.6),
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.08.w,
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    const Text(
                      "Log in",
                      style: TextStyle(
                        color: Color(0xfff86601),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String hintText;
  final Icon? icon;
  const InputField({Key? key, required this.hintText, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 54.h,
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: icon,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.r),
              borderSide: const BorderSide(
                color: Color(0xfff86601),
                width: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
