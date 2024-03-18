import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'img_screen.dart';
import 'newpost_screent.dart';
import 'profile_screen.dart';
import 'insta_obj.dart';
import 'reel_screen.dart';

class Search2 extends StatelessWidget {
  const Search2({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(top: 35),
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5,top: 3),
                  width: 350,
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: TextField(

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top:6),
                          filled: true,
                          fillColor: Colors.grey.shade400,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintText: 'Search',

                          hintStyle:
                          const TextStyle(fontSize: 18, color: Colors.black38),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                          )),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return SizedBox(
                          height: 280,
                          child: Row(
                            children: [
                              Expanded(
                                  child: index % 2 == 0
                                      ? Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                      Colors.white,
                                                      width: 2)),
                                              child: Stack(
                                                  children: [
                                                    InkWell(
                                                      onLongPress: (){
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(builder: (context){
                                                              return DemoPera('${posts[index][1]}','${posts[index][1.2]}','${posts[index][1.1]}');
                                                            })
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'post',
                                                        child: SizedBox(
                                                            height: 180,
                                                            child:
                                                            Image.asset(
                                                              '${posts[index][1]}',
                                                              fit: BoxFit
                                                                  .cover,
                                                            )),
                                                      ),
                                                    ),
                                                    const Positioned(
                                                        left: 95,
                                                        top: 5,
                                                        child: Icon(
                                                          Icons.more,
                                                          color: Colors
                                                              .white,
                                                        ))
                                                  ]))),
                                      Expanded(
                                          child: InkWell(
                                            onLongPress: (){
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(builder: (context){
                                                    return DemoPera('${posts[index][2]}','${posts[index][2.2]}','${posts[index][2.1]}');
                                                  })
                                              );
                                            },
                                            child: Hero(
                                              tag: 'post',
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      border: Border.all(
                                                          color:
                                                          Colors.white,
                                                          width: 2)),
                                                  child: Image.asset(
                                                    '${posts[index][2]}'
                                                  ),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )
                                      : Expanded(
                                      child: InkWell(
                                        onLongPress: (){
                                          Navigator.of(context).push(
                                              MaterialPageRoute(builder: (context){
                                                return DemoPera('${posts[index][5]}','${posts[index][5.2]}','${posts[index][5.1]}');
                                              })
                                          );
                                        },
                                        child: Hero(
                                          tag: 'post',
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2)),
                                              child: Stack(
                                              fit: StackFit.expand,
                                              children: [
                                                Image.asset(
                                                    '${posts[index][5]}',
                                                    fit: BoxFit.cover),
                                                const Positioned(
                                                    top: 5,
                                                    right: 5,
                                                    child: Icon(
                                                      Icons.play_circle,
                                                      color: Colors.white,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ))),
                              Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: InkWell(
                                            onLongPress: (){
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(builder: (context){
                                                    return DemoPera('${posts[index][3]}','${posts[index][3.2]}','${posts[index][3.1]}');
                                                  })
                                              );
                                            },
                                            child: Hero(
                                              tag: 'post',
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 2)),
                                                  child: Image.asset(
                                                  '${posts[index][3]}',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          child: InkWell(
                                            onLongPress: (){
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(builder: (context){
                                                    return DemoPera('${posts[index][4]}','${posts[index][4.2]}','${posts[index][4.1]}');
                                                  })
                                              );
                                            },
                                            child: Hero(
                                              tag: 'post',
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      border: Border.all(
                                                          color: Colors.white,
                                                          width: 2)),
                                                  child: Image.asset(
                                                  '${posts[index][4]}',
                                                ),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),
                              Expanded(
                                  child: index % 2 != 0
                                      ? Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                      Colors.white,
                                                      width: 2)),
                                              child: Stack(
                                                  children: [
                                                    InkWell(
                                                      onLongPress: (){
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(builder: (context){
                                                              return DemoPera('${posts[index][1]}','${posts[index][1.2]}','${posts[index][1.1]}');
                                                            })
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'post',
                                                        child: SizedBox(
                                                            height: 180,
                                                            child:
                                                            Image.asset(
                                                              '${posts[index][1]}',
                                                              fit: BoxFit
                                                                  .cover,
                                                            )),
                                                      ),
                                                    ),
                                                    const Positioned(
                                                        left: 95,
                                                        top: 5,
                                                        child: Icon(
                                                          Icons.more,
                                                          color: Colors
                                                              .white,
                                                        ))
                                                  ]))),
                                      Expanded(
                                          child: InkWell(
                                            onLongPress: (){
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(builder: (context){
                                                    return DemoPera('${posts[index][2]}','${posts[index][2.2]}','${posts[index][2.1]}');
                                                  })
                                              );
                                            },
                                            child: Hero(
                                              tag: 'post',
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      border: Border.all(
                                                          color:
                                                          Colors.white,
                                                          width: 2)),
                                                  child: Image.asset(
                                                    '${posts[index][2]}'),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )
                                      : Expanded(
                                      child: InkWell(
                                        onLongPress: (){
                                          Navigator.of(context).push(
                                              MaterialPageRoute(builder: (context){
                                                return DemoPera('${posts[index][5]}','${posts[index][5.2]}','${posts[index][5.1]}');
                                              })
                                          );
                                        },
                                        child: Hero(
                                          tag: 'post',
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 2)),
                                              child: Stack(
                                              fit: StackFit.expand,
                                              children: [
                                                Image.asset(
                                                    '${posts[index][5]}',
                                                    fit: BoxFit.cover),
                                                const Positioned(
                                                    top: 5,
                                                    right: 5,
                                                    child: Icon(
                                                      Icons.play_circle,
                                                      color: Colors.white,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ))),
                            ],
                          ));
                    },
                    itemCount: posts.length,
                  )),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context){
                                // return ChatScreen();
                                return const HomeScreen();
                              })
                          );
                        },
                        child: const Icon(
                          Icons.home_outlined,
                          size: 40,
                          color: Colors.black54,
                        )),
                    const Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.black87,
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
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context){
                                  return const ProfileScreen();
                                }
                            )
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/gojo-post.jpg'),
                        backgroundColor: Colors.yellow,
                        radius: 18,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

