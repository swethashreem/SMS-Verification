
// import 'package:flutter/material.dart';

// void main(){
//   runApp(const  MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   ));
// }
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('SMS Verification'),
//       ),
//       body:Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 220,left: 30,right: 30),
//             child: TextFormField(decoration: InputDecoration(
//                               labelText: "Mobile Number",
//                               labelStyle: TextStyle(color: Colors.black),
//                               prefixIcon: Icon(
//                                   Icons.mobile_friendly,color: Colors.black,
//                                 ),
//                               enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.black,width: 0.4),
//                               ),
//                               focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.black,width: 0.9)
//                               )
//                             ),
//                             keyboardType: TextInputType.number,
                
//             ),
//           ),
//           TextButton(
//             onPressed: (){}, 
//             style: TextButton.styleFrom(
//                       backgroundColor:Colors.blue,
//                       // minimumSize: Size.fromHeight(50),
//                       shape: RoundedRectangleBorder(
//                       borderRadius:BorderRadius.all(Radius.circular(10.0))),
//                     ),
//             child: Text('Send OTP',style:TextStyle(color: Colors.black),))
//         ],
//       )
//     );
//   }
// }
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      color: Colors.indigo[900],
    );
  }
}