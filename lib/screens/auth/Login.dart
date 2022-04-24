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

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: mediaQuery.size.height * 0.2),
                Container(
                  child: Column(
                    children: [
                      Image.asset("assets/loginlogo.png"),
                      SizedBox(
                        height: mediaQuery.size.height * 0.1,
                      ),
                      _widgets[index1],
                      SizedBox(
                        height: mediaQuery.size.height * 0.025,
                      ),
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
                      SizedBox(
                        height: mediaQuery.size.height * 0.02,
                      ),
                      TextButton(
                        child: Text(
                          'Login with diffrent number',
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                        onPressed: () {},
                      ),
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
