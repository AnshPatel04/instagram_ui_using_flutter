import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'insta_obj.dart';
import 'newpost_screent.dart';
import 'profile_screen.dart';
import 'reel_screen.dart';
import 'search_screen2.dart';
import 'package:gradient_borders/gradient_borders.dart';

import 'story_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderPart(),
            StoryPart(),
            BodyPart(),
            FooterPart(),
          ],
        ),
      ),
    );
  }
}

class HeaderPart extends StatelessWidget {
  const HeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        children: [
          const Text(
            "Instagram",
            style: TextStyle(fontSize: 30,fontFamily: 'FontMain'),
          ),
          const Icon(Icons.arrow_drop_down_sharp),
          Expanded(child: Container()),
          const Icon(Icons.favorite_border, size: 40),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ChatScreen();
                  }));
                },
                child: const Icon(
                  Icons.mark_chat_unread_outlined,
                  size: 40,
                )),
          )
        ],
      ),
    );
  }
}

class StoryPart extends StatelessWidget {
  const StoryPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return index == 0
                ? Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Stack(children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:forStory[index]['haveStory'] == true
                                  ?
                                      const GradientBoxBorder(
                                          width: 5,
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.amber,
                                              Colors.deepOrange,
                                              Colors.red,
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.pinkAccent,
                                            ],
                                          )
                                      )
                                  :
                                      Border.all(
                                        color:  Colors.transparent,
                                        width: 5,
                                      ),
                            ),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('${forStory[index]['userPic']}'),
                              backgroundColor: Colors.yellow,
                              radius: 40,
                            ),
                          ),
                          Text(
                            '${forStory[index]['userId']}',
                            style: const TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      Positioned(
                          bottom: 43,
                          left: 55,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                                shape: BoxShape.circle,
                                // border: Border.all(
                                //   // color: Colors.white,
                                //   // width: 3,
                                // )
                            ),
                            child: const Icon(
                              Icons.add_circle,
                              color: Colors.blueAccent,
                            ),
                          ))
                    ]),
                  )
                : Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: Column(
                      children: [
                        Container(
                          decoration:
                          BoxDecoration(
                            shape: BoxShape.circle,
                              border: forStory[index]['haveStory'] == true?
                                        const GradientBoxBorder(
                                            width: 5.0,
                                            gradient: LinearGradient(
                                              colors: [
                                                  Colors.amber,
                                                  Colors.deepOrange,
                                                  Colors.red,
                                                  Colors.purple,
                                                  Colors.purpleAccent,
                                                  Colors.pinkAccent,
                                              ],
                                            )
                                        )
                                      :
                                        Border.all(
                                          color: Colors.transparent,
                                          width: 5,
                                        ),
                          ),

                           child: InkWell(
                             onTap: (){
                               Navigator.of(context).push(
                                   MaterialPageRoute(builder: (context){
                                     return StoryScreen('${forStory[index]['story']}','${forStory[index]['userId']}','${forStory[index]['userPic']}');
                                   })
                               );
                             },
                             child: Hero(
                               tag: 'forStory',
                               child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('${forStory[index]['userPic']}'),
                                backgroundColor: Colors.yellow,
                                radius: 40,
                               ),
                             ),
                           ),
                        ),
                        Text(
                          '${forStory[index]['userId']}',
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  );
          },
          itemCount: forStory.length,
        ));
  }
}

class BodyPart extends StatefulWidget {
  const BodyPart({super.key});

  @override
  State<BodyPart> createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ListView.separated(
        // physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: postOfFollowing[index]['haveStory'] == true?
                                      const GradientBoxBorder(
                                          width: 3,
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.amber,
                                              Colors.deepOrange,
                                              Colors.red,
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.pinkAccent,
                                            ],
                                          )
                                      )
                                    :
                                       Border.all(
                                          color: Colors.transparent,
                                          width: 3,
                                       ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                '${postOfFollowing[index]['userPic']}'),
                            backgroundColor: Colors.yellow,
                            radius: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('${postOfFollowing[index]['userId']}',
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                ),
                Image.asset('${postOfFollowing[index]['post']}'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 16),
                            child:  InkWell(
                              onTap: (){
                                setState(() {
                                  if (postOfFollowing[index]['isLiked'] == false){
                                    postOfFollowing[index]['isLiked'] =  true;
                                    postOfFollowing[index]['like'] += 1;
                                  }else{
                                    postOfFollowing[index]['isLiked'] =  false;
                                    postOfFollowing[index]['like'] -= 1;
                                  }

                                });
                              },
                              child: postOfFollowing[index]['isLiked'] == false ?Icon(
                                Icons.favorite_border,
                                size: 30,
                              ) : Icon(Icons.favorite,size: 30,color: Colors.red,),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 16),
                            child: const Icon(
                              Icons.comment_outlined,
                              size: 30,
                            ),
                          ),
                          const Icon(
                            Icons.send_and_archive_outlined,
                            size: 30,
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          const Icon(
                            Icons.bookmark_border_outlined,
                            size: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                              '${postOfFollowing[index]['like']}  likes',
                              style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text:'${postOfFollowing[index]['userId']}  ',
                                    style: const TextStyle(
                                              fontSize: 19,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            )
                                ),
                                TextSpan(
                                    text:'${postOfFollowing[index]['caption']}',
                                    style: const TextStyle(
                                      fontSize: 19,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                    ),
                                ),
                              ]
                            )
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                              'View all ${postOfFollowing[index]['comment']} comments',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                              '${postOfFollowing[index]['timeOfPosting']} day ago',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      //comment
                    ],
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 9,
              thickness: 1,
            );
          },
          itemCount: postOfFollowing.length),
    );
  }
}

class FooterPart extends StatelessWidget {
  const FooterPart({super.key});

  @override
  Widget build(BuildContext context) {
    // final String userPic = loginedUse['userPic'];
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Colors.black:Colors.black45
          const Icon(
            Icons.home_outlined,
            size: 40,
            color: Colors.black87,
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
              color: Colors.black54,
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
            // NewPostScreent
            child: const Icon(
              Icons.add_box_outlined,
              size: 40,
              color: Colors.black54,
            ),
          ),
          InkWell( //
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ReelScreen();
              }));
            },
            child: const Icon(
              Icons.play_circle_outline_outlined,
              size: 40,
              color: Colors.black54,
            ),
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
