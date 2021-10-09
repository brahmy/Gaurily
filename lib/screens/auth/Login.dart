import 'package:flutter/material.dart';
import 'package:gaurily/screens/HomeCategoryTabs.dart';
import 'package:gaurily/screens/grid_screen.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gaurily',
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  child: Text('LOGIN'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GridViewScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
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
