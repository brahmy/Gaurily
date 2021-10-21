import 'package:flutter/material.dart';
import 'package:gaurily/screens/auth/Registration.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// import 'package:gaurily/screens/HomeCategoryTabs.dart';
// import 'package:gaurily/screens/grid_screen.dart';

// class Login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Container(
//             padding: EdgeInsets.all(50.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Gaurily',
//                   style: Theme.of(context).textTheme.headline1,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Username',
//                   ),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Password',
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(
//                   height: 24,
//                 ),
//                 ElevatedButton(
//                   child: Text('LOGIN'),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => GridViewScreen()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.yellow,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final double circleRadius = 220.0;

  final double circleBorderWidth = 10.0;

  int index = 0;
  int index1 = 0;

  List<Widget> _widgets = [
    Container(
      child: Column(
        children: [
          Container(
            height: 50,
            width: 330,
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 35),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF05014a), width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF05014a), width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Mobile Number',
                  labelStyle: TextStyle(color: Color(0xFF05014a))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                child: Text(
                  'Login with diffrent number',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    ),
    Column(
      children: [
        Container(
          height: 50,
          width: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Color(0xFF05014a))),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: OTPTextField(
              length: 4,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              otpFieldStyle:
                  OtpFieldStyle(enabledBorderColor: Color(0xFF05014a)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Resend OTP',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
          ),
        ),
      ],
    ),
  ];
  List _buttonValue = [
    'Get OTP',
    'Login',
  ];

  void _changeState() {
    if (index != 1 || index1 != 1) {
      index += 1;
      index1 += 1;
      setState(() {
        index;
        index1;
      });
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Registration()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: mediaQuery.size.height * 0.06),
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: circleRadius / 2.0),
                      child: Container(
                        //replace this Container with your Card
                        height: mediaQuery.size.height * 0.161,
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                      ),
                    ),
                    Container(
                      width: circleRadius,
                      height: circleRadius,
                      decoration: ShapeDecoration(
                          shape: CircleBorder(), color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(circleBorderWidth),
                        child: ClipOval(
                          child: Container(
                            /* height: 200,
                            width: 200,
                            color: Colors.white,*/
                            child: Image.asset(
                              'assets/onlyLogo.png',
                              /*width: 200.0,
                              height: 200.0,*/
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey[100],
                  height: mediaQuery.size.height * 0.58,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Image.asset('assets/logoName.png'),
                      ),
                      SizedBox(height: mediaQuery.size.height * 0.08,),
                      _widgets[index1],
                      SizedBox(height: mediaQuery.size.height * 0.04,),
                      Container(
                        height: 50,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            _changeState();
                          },
                          child: Text(
                            _buttonValue[index].toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              primary: Color(0xFF05014a)),
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.height * 0.005,),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ],
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
