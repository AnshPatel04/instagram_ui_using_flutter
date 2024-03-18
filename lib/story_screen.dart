import 'dart:async';

import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  final String post,userId,userPic;
  const StoryScreen(this.post,this.userId, this.userPic, {super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'forStory',
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(widget.post,fit: BoxFit.cover,),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5,left: 10,right: 10),
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                width: 4,
                                color: Colors.white
                              )
                            )
                          ),
                          child: Row(
                            children: [

                              Column(
                                children: [
                                  const SizedBox(height: 10,),
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        widget.userPic),
                                    backgroundColor: Colors.yellow,
                                    radius: 23,
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                              Text(widget.userId,style: const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
                              Expanded(child: Container(color: Colors.transparent,)),
                              const Icon(Icons.more_vert_outlined,color: Colors.white,size: 30,)
                            ],
                          ),
                        ),
                        Expanded(child: Container(color: Colors.transparent,)),

                        Container(
                          color: Colors.black,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.telegram,color: Colors.white,size: 35,),
                              SizedBox(width: 10,),
                              Icon(Icons.favorite_border,color: Colors.white,size: 35,),
                              SizedBox(width: 10,),
                              Icon(Icons.send_and_archive_outlined,color: Colors.white,size: 35,),
                              SizedBox(width: 5,),
                              Icon(Icons.more_vert_outlined,color: Colors.white,size: 35,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
