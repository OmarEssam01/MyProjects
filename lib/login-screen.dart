import 'package:flutter/material.dart';
import 'package:furniture_app/screens/product/products_screen.dart';
import 'package:furniture_app/signup-screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Log-In',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const Divider(
              color: Colors.blue,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              height: 20,
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child:  const Text('Forgot Password?!',
                  style: TextStyle(
                    color: Colors.blue,)),

            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Sign in',
                      style: TextStyle(
                        color: Colors.white,)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ProductsScreen();
                    })
                    
                    );
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text("Don't have account?"),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20,
                      color: Colors.blue,),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SecondScreen(email: AutofillHints.email, password: passwordController.text,);
                    }
                    ));
                    //signup screen
                  },
                ),
              ],

              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const Divider(
              color: Colors.blue,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              height: 20,
            ),
          ],
        ),),
    );
  }
}