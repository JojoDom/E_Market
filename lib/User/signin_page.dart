import 'package:e_market/Screens/Home/home_screen.dart';
import 'package:e_market/User/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({ Key? key }) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  // function to implement the google signin

// creating firebase instance
final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signup(BuildContext context) async {
	final GoogleSignIn googleSignIn = GoogleSignIn();
	final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
	if (googleSignInAccount != null) {
	final GoogleSignInAuthentication googleSignInAuthentication =
		await googleSignInAccount.authentication;
	final AuthCredential authCredential = GoogleAuthProvider.credential(
		idToken: googleSignInAuthentication.idToken,
		accessToken: googleSignInAuthentication.accessToken);
	
	// Getting users credential
	UserCredential result = await auth.signInWithCredential(authCredential);
	// ignore: unused_local_variable
	User? user = result.user;
	
	
	// ignore: unnecessary_null_comparison
	if (result != null) {
		Navigator.pushReplacement(
			context, MaterialPageRoute(builder: (context) => const HomePage()));
	} // if result not null we simply call the MaterialpageRoute,
		// for go to the HomePage screen
	}
}

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        automaticallyImplyLeading:false,
        toolbarHeight: 5.0,
      ),
       body: Container(
         padding: const EdgeInsets.all(20.0),
           height: height,
           width: width,
           decoration:const BoxDecoration(color: Colors.grey),
         
         child :Container(
          
           decoration: const BoxDecoration(color: Colors.white),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             
             children:<Widget>[
                 Container( 
                   padding: const EdgeInsets.only(top:60, bottom: 10),
                   child: const Center(child:Text('Sign In', style:TextStyle(color:Colors.black, fontSize:25.0, fontWeight:FontWeight.normal)))),
                const Text('Sign in with your social media account', style: TextStyle(color: Colors.grey,fontSize:15.0,fontWeight: FontWeight.normal)),

                Container(
                   padding: const EdgeInsets.all(20.0),
                   child: Row(
                       mainAxisAlignment:MainAxisAlignment.center,
                     children: <Widget>[
                         GestureDetector(
                           child:Image.asset('assets/images/google.png'),
                           onTap: (){
                             signup(context);
                           },
                         ),
                         GestureDetector(
                           child:Image.asset('assets/images/facebook.png'),
                           onTap: (){
                             
                           },
                         ),
                         GestureDetector(
                           child:Image.asset('assets/images/twitter.png'),
                           onTap: (){
                             
                           },
                         ),
                   ],)
                 ),
                 Expanded(child: 
                 Container(
                  padding: const EdgeInsets.all(20),
                   child:Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children: <Widget>[
                            TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20.0),
              labelText : 'Email',
              floatingLabelBehavior:FloatingLabelBehavior.auto,
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              suffixIcon:const Icon(Icons.email),
            ),
             ),
              TextFormField(
            
            obscureText: true,
            decoration: InputDecoration(
              floatingLabelBehavior:FloatingLabelBehavior.auto,
              border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              contentPadding: const EdgeInsets.all(20.0),
              labelText: 'Password',
              suffixIcon: const Icon(Icons.visibility_off)
            ),
             
          ),
           ElevatedButton(
                         style: ElevatedButton.styleFrom(
                    
                    primary: Colors.yellow[900],
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              textStyle:
                  const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
      borderRadius:  BorderRadius.circular(8.0),
    ),   
           ),
                
                onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>const HomePage())); },
               child: const Text('Login')),

           GestureDetector(
                      onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> const SignUpPage()),); 
                 },
                 child: const Text.rich(
 
                   TextSpan(
                     text: 'Don\'t have an account? ',
                     children: [
                       TextSpan(text: 'SignUp', style:TextStyle(color:Color(0xffEE7B23))
                     
                   ),
                     ]
                 ),
                 )

           )           
                    
                     ],
                   )
                 )
                 ),

                 const SizedBox(height:50.0),    
             ]
           )
      ))
    );
  }
}




