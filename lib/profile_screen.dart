import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'img_screen.dart';
import 'insta_obj.dart';
import 'newpost_screent.dart';
import 'reel_screen.dart';
import 'save_login_screen.dart';
import 'search_screen2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'story_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
        body: SafeArea(child: Column(
          children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HeaderPart(),
                      UserDetails(),
                      BioPart(),
                      EditShare(),
                      SHighlight(),
                      PostingPart(),
                    ],
                  ),
                ),
              ),
              
              FooterPart()
          ]
        )),
    );
  }
}

class HeaderPart extends StatelessWidget {
  const HeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 10,
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          // SizedBox(width: 10,),
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Icon(Icons.lock_outline_sharp)),
          // SizedBox(width: 7,),
          Container(
              margin: const EdgeInsets.only(left: 7),
              child: Text("${logdeinUser[0]['userId']}",style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 27),)),
          const Expanded(child: SizedBox()),
          const Icon(Icons.add_box_outlined,size: 29,),
          // SizedBox(width: 20,),
          Container(
              margin: const EdgeInsets.only(left: 20,right: 10),
              child: const Icon(Icons.menu,size: 29,)),
          // SizedBox(width: 10,),
        ],
      ),
    );
  }
}

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 28),
      child: Row(
        children: [
          // SizedBox(width: 10,),
          Container(
            margin: const EdgeInsets.only(left: 3.2),
            child: CircleAvatar(
              backgroundImage:
              AssetImage('${logdeinUser[0]['userPic']}'),
              backgroundColor: Colors.yellow,
              radius: 45,
            ),
          ),
          const Expanded(child: SizedBox()),
          Column(
            children: [
              Text('${logdeinUser[0]['post']}',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              const Text('posts',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
            ],
          ),
          const Expanded(child: SizedBox()),
          Column(
            children: [
              Text('${logdeinUser[0]['follower']}',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              const Text('followers',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
            ],
          ),
          const Expanded(child: SizedBox()),
          Container(
            margin: const EdgeInsets.only(right: 3.2),
            child: Column(
              children: [
                Text('${logdeinUser[0]['following']}',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                const Text('following',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ],
            ),
          ),
          // SizedBox(width: 10,),
        ],
      ),
    );
  }
}

class BioPart extends StatelessWidget {
  const BioPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10,),
              Text('${logdeinUser[0]['userName']}',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              const SizedBox(width: 10,),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 10,),
              Text('${logdeinUser[0]['bio']}',style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              const SizedBox(width: 10,),
            ],
          ),
        ],
      ),
    );
  }
}

class EditShare extends StatelessWidget {
  const EditShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15,bottom: 15),
      child: Row(
        children: [
          const SizedBox(width: 10,),
          Expanded(
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: (){},
                child: const Text('Edit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.black))),
          ),
          const SizedBox(width: 9,),
          Expanded(
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: (){},
                child: const Text('Share',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.black))),
          ),
          const SizedBox(width: 9,),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: (){},
              child: const FaIcon(FontAwesomeIcons.addressBook,color: Colors.black,)),
          const SizedBox(width: 10,),
        ],
      ),
    );
  }
}

class SHighlight extends StatelessWidget {
  const SHighlight({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return index != highlight.length ?
                Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return StoryScreen('${highlight[index]['highlight']}','${highlight[index]['highlightId']}','${highlight[index]['highlightPic']}');
                            })
                        );
                      },
                      child: Hero(
                        tag: 'forStory',
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('${highlight[index]['highlightPic']}'),
                          backgroundColor: Colors.grey.shade200,
                          radius: 40,
                        ),
                      ),
                    ),
                    Text(
                      '${highlight[index]['highlightId']}',
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
              :
                Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: 40,
                      child: const Icon(Icons.add,size: 40,),
                    ),
                    const Text(
                      'New',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
              ;
            },
            itemCount: highlight.length+1,
          )),
    );
  }
}

class PostingPart extends StatelessWidget {
  const PostingPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: Colors.black,
                            width: 2
                        )
                      ),
                    ),
                    child: const Icon(Icons.grid_4x4,size: 38)
                ),
              ),
              const Expanded(child: Center(child: FaIcon(FontAwesomeIcons.userTag,size: 30,)))
            ],
          ),
        ),
        SizedBox(
          height: 600,
          child: GridView.builder(
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
              return InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return DemoPera(usersPost[index]['post'],'${logdeinUser[0]['userId']}','${logdeinUser[0]['userPic']}');
                        })
                    );
                  },
                  child: Hero(
                      tag: 'post',
                      child: Image.asset('${usersPost[index]['post']}',fit: BoxFit.cover,))
              );
            },
            itemCount: usersPost.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2
            ),
          ),
        )
      ],
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
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
            },
            child: const Icon(
              Icons.home_outlined,
              size: 40,
              color: Colors.black54,
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
            child: const Icon(
              Icons.add_box_outlined,
              size: 40,
              color: Colors.black54,
            ),
          ),
          InkWell(
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
                return const SaveScreen();
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.brown,
                  width: 3,
                ),
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 18,
                backgroundImage: AssetImage('assets/images/gojo-post.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}