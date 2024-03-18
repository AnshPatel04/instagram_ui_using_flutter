import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'insta_obj.dart';
import 'newpost_screent.dart';
import 'profile_screen.dart';
import 'search_screen2.dart';

class ReelScreen extends StatefulWidget {
  const ReelScreen({super.key});

  @override
  State<ReelScreen> createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 710,
                        child:
                        Column(
                          children: [
                            Expanded(
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset('${reeLPost[index]['post']}',fit: BoxFit.cover,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(child: Container()),


                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Container(
                                                      margin: const EdgeInsets.only(bottom: 10),
                                                      child: Row(

                                                        children: [
                                                          Container(
                                                            margin: const EdgeInsets.only(left: 6),
                                                            child: CircleAvatar(
                                                              backgroundImage: AssetImage('${reeLPost[index]['userPic']}'),
                                                              backgroundColor: Colors.yellow,
                                                              radius: 20,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text('${reeLPost[index]['userId']}',style: const TextStyle(fontSize: 19,
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,))

                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: const EdgeInsets.only(left: 10),
                                                      child: Text(
                                                        '${reeLPost[index]['caption']}',
                                                        style: const TextStyle(
                                                          fontSize: 19,
                                                          color: Colors.white54,
                                                          fontWeight: FontWeight.w600,
                                                        ),),

                                                    )
                                                  ],
                                                ),
                                                Expanded(child: Container()),
                                                Column(
                                                  children: [
                                                    Container(
                                                        margin: const EdgeInsets.only(top: 20),
                                                        child:  InkWell(
                                                            onTap: (){
                                                              setState(() {
                                                                reeLPost[index]['isLiked'] = reeLPost[index]['isLiked'] == false ? true : false;
                                                              });
                                                            },
                                                            child: reeLPost[index]['isLiked'] == false ? Icon(Icons.favorite_border,color: Colors.white,size: 35,) : Icon(Icons.favorite,size: 35,color: Colors.red,)),
                                                    ),
                                                    Container(
                                                      margin: const EdgeInsets.only(top: 20),
                                                      child: const Icon(
                                                        Icons.comment_outlined,
                                                        color: Colors.white,size: 35,
                                                      ),
                                                    ),
                                                    Container(margin: const EdgeInsets.only(top: 20),child: const Icon(Icons.telegram_sharp,color: Colors.white,size: 35,)),
                                                    Container(margin: const EdgeInsets.only(top: 20),child: const Icon(Icons.more_vert_rounded,color: Colors.white,size: 35,)),
                                                    Container(
                                                      margin: const EdgeInsets.only(right: 10,bottom: 10,top: 20),
                                                      color: Colors.white,
                                                      height: 40,
                                                      width: 40,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                      );
                    },
                    itemCount: reeLPost.length,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5,left: 10,right: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text('Reels',style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.w700),),
                            const Icon(Icons.arrow_drop_down,size: 30,color: Colors.white,),
                            Expanded(child: Container()),
                            const Icon(Icons.camera_alt_outlined,size: 35,color: Colors.white,)
                          ],
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                ]

              ),
            ),
            const FooterPart()
          ],
        )
      ),
    );
  }
}

class FooterPart extends StatelessWidget {
  const FooterPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
            },
            child: const Icon(
              Icons.home_outlined,
              size: 40,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Search2();
              }));
            },
            child: const Icon(
              Icons.search,
              size: 40,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    // return ChatScreen();
                    return const NewPostScreent();
                  })
              );
            },
            child: const Icon(
              Icons.add_box_outlined,
              size: 40,
              color: Colors.white,
            ),
          ),
          const Icon(
            Icons.play_circle,
            size: 40,
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ProfileScreen();
              }));
            },
            child: const CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 18,
              backgroundImage: AssetImage('assets/images/gojo-post.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}