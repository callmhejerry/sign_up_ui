import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
              child: const Text(
                "Meow!",
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 0.36,
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
              child: const Text(
                "Welcome to our adoption app! \n i hope you'll find what your are looking for!",
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: -0.32,
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
                  const InputField(),
                  SizedBox(
                    height: 16.h,
                  ),
                  const InputField(),
                  SizedBox(
                    height: 16.h,
                  ),
                  const InputField(),
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
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.35,
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
                      const Text(
                        "Sign up with Facebook",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1c1c1e),
                          letterSpacing: -0.32,
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
                        fontSize: 13,
                        color: const Color(0xff3c3c43).withOpacity(0.6),
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.08,
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
  const InputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 54.h,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.r),
          ),
        ),
      ),
    );
  }
}
