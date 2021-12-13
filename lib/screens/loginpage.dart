import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  
  Widget getTextField ({required String hint}){
    return TextField(
      decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(2),
                ),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(2),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
                ),
                filled: true,
                hintText: 'hint',
                hintStyle: TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
     
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Login')),
        ),
        body: SafeArea(
          child: Column(children: [
            Text(
            'Chat App', style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 60.0,
              width: 40.0,
              child: TextButton(onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide(color: Colors.lightBlueAccent)),
                backgroundColor: MaterialStateProperty.all(Colors.white54),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.w400))
              ),
               child: Text('Continue with Facebook')),
            ),

            SizedBox(height: 16.0,),
            Row(
              children: [
                Expanded(child: Divider()),
                SizedBox(width: 16.0,),
                Text('OR', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),),
                SizedBox(width: 16.0,),
                Expanded(child: Divider()),
                
              ],
            ),
            SizedBox(height: 16.0,),
            getTextField(hint: 'Phone number,Username or Email'),
            SizedBox(height: 16.0, width: 70,),
            getTextField(hint: 'Password'),
            SizedBox(height: 16.0, width: 70,),

              SizedBox(
                width: 50.0,
                child: TextButton(onPressed: (){},
                style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide(color: Colors.lightBlueAccent)),
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.w400))
              ),
                 child: Text('Log In')),
              ),
              Wrap(children: [
                Text('Donot have an account?', style: TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.w400),),
                Text('SignUp', style: TextStyle(
                  color: Colors.blue, fontSize: 14.0, fontWeight: FontWeight.w400),),
              ],)

          ],
          ),
        )

      ),
      );
  }
}