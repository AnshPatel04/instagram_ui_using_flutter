import 'package:flutter/material.dart';

import 'insta_obj.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('${logdeinUser[0]['userPic']}',fit: BoxFit.cover,),
          Positioned(
            left: 10,
            bottom: 20,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: 0.5
                      )
                  )
              ),
              child: Column(

                children: [
                  SizedBox(
                      width: 350,
                      child: ElevatedButton(onPressed: (){
                        Navigator.of(context).pop();
                      },style: ElevatedButton.styleFrom(
                        // primary: Colors.lightGreen,
                        backgroundColor:  Colors.blue,
                      ),child: const Text('Save',style: TextStyle(color: Colors.white,fontSize: 21),))
                  ),
                  SizedBox(
                      width: 350,
                      child: ElevatedButton(onPressed: (){
                          Navigator.of(context).pop();
                        },
                          child: const Text('Not now',style: TextStyle(color: Colors.black,fontSize: 21)))),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: 100,
              height: 100,
              // color: Colors.red,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color:Colors.white,
                  width: 5,
                ),
              ),
              child: const CircleAvatar(

                // backgroundColor: Colors.yellow,
                radius: 10,
                backgroundImage: AssetImage('assets/images/gojo-post.jpg',),
              ),
            ),
          ),
          const Positioned(
              top: 140,
              left: 45,
              child: Text("to enter it next time you log in",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w500))),
          const Positioned(
              top: 119,
              left: 39,
              child: Text("ansh_padalia, so you won't need",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w500),)),
          const Positioned(
              top: 97,
              left: 60,
              child: Text("We'll save the login info for",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w500),)),
          const Positioned(
              top: 55,
              left: 60,
              child: Text("Save your login info?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 28),))
        ],
      ),
    );
  }
}
