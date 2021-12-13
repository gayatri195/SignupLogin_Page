import 'package:flutter/material.dart';
import 'loginpage.dart';

 class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   Widget getTextField({required String hint}){
     return TextField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(2),
                       borderSide: BorderSide(color: Colors.transparent, width: 0),
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.transparent, width: 0),
                         borderRadius: BorderRadius.circular(2),
                         ),
                         contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                         filled: true,
                         hintText: hint,
                         hintStyle: TextStyle(
                           fontSize: 14.0,
                           fontWeight: FontWeight.w400)
                       ),
                 );

   }

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
         debugShowCheckedModeBanner: false,
         
         home: Scaffold(
           appBar: AppBar(
           title: Center(
             child: Text('Hello Chat App')),
           ),
           body: SafeArea(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 24),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 SizedBox(height: 42),  
                 Text('Sign Up to Masterminds', 
                 style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
                 ),
                 SizedBox(height: 4,),
                 Wrap(
                   children: [
                     Text('Already have an account?', style: TextStyle(fontSize: 15),
                     ),
                     TextButton( 
                       child: Text('Login',
                         
                         style: TextStyle(
                         fontSize: 15, color: Colors.blue, fontWeight: FontWeight.w700),
                       ),
                       onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                     },
                     
                     ),
                   ],
                 ),
                 
                 SizedBox(height: 20,),
                 getTextField(hint: 'Full Name'),
                 SizedBox(height: 16.0),
                 getTextField(hint: 'Email'),
                 SizedBox(height: 16.0),
                 getTextField(hint: 'Password'),
                 SizedBox(height: 16.0),
                 getTextField(hint: 'Confirm Password'),
                 SizedBox(height: 16.0),
                  SizedBox(height: 20,),
                 
                 SizedBox(
                   width: double.infinity,
                   child: TextButton(
                   onPressed: () {
                     
                   },
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all(Colors.blue),
                     foregroundColor: MaterialStateProperty.all(Colors.white),
                     padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14)),
                     textStyle: MaterialStateProperty.all(TextStyle(
                       fontSize: 14.0, fontWeight: FontWeight.w700))),
                   child: Text('Create Account',),
                 ),
                ),
                SizedBox(height: 16.0,),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    SizedBox(width: 16.0,),
                    Text('or sign up via', style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500),),
                    SizedBox(width: 16.0,),
                    Expanded(child: Divider()),
                  
                  ],
                ),
                SizedBox(height: 16.0,),
                SizedBox(
                   width: double.infinity,
                   child: TextButton(
                   onPressed: () {
                     
                   },
                   style: ButtonStyle(
                     side: MaterialStateProperty.all(BorderSide(color: Colors.lightBlueAccent)),
                     foregroundColor: MaterialStateProperty.all(Colors.black),
                     padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14)),
                     textStyle: MaterialStateProperty.all(TextStyle(
                     fontSize: 14.0, fontWeight: FontWeight.w700))),
                   child: Text('Google',),
                 ),
                ),
                SizedBox(height: 16.0,),
                Wrap(children: [
                  Text('By signing up to Masterminds you agree to our', style: TextStyle(
                    fontSize: 15.0, color: Colors.black26)),
                  Text('terms and condition', style: TextStyle(
                    fontSize: 14.0, color: Colors.blue),),
                ],)
                 
                ],
           
                ),
             ),
           )
             
           
           ),
           
     );
   }
}