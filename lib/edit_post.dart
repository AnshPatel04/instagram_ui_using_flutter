import 'package:flutter/material.dart';

import 'edit_post_1.dart';
import 'home_screen.dart';

class EditPost extends StatefulWidget {
  var selectedImg;
  EditPost(var img,{super.key}){
    this.selectedImg = img;
  }

  @override
  State<EditPost> createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
  var co = [
    {
      'color':Colors.transparent,
      'title': "Normal"
    },
    {
      'color': Colors.red.withOpacity(0.4),
      'title': "Red"
    },
    {
      'color': Colors.yellow.withOpacity(0.4),
      'title': "Yellow"
    },
    {
      'color': Colors.orange.withOpacity(0.4),
      'title': "Orange"
    },
    {
      'color': Colors.green.withOpacity(0.4),
      'title': "Green"
    },
    {
      'color': Colors.purple.withOpacity(0.4),
      'title': "Purple"
    },
    {
      'color': Colors.lime.withOpacity(0.4),
      'title': "Lime"
    },
    {
      'color': Colors.white.withOpacity(0.4),
      'title': "White"
    },
    {
      'color': Colors.pink.withOpacity(0.4),
      'title': "Pink"
    },
    {
      'color': Colors.cyanAccent.withOpacity(0.4),
      'title': "Cyan"
    },
  ];
  var theam =  Colors.transparent;
  var temp,tempIndex=0,tempColor;

  // var theam = co[4]['color'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderPart(theam,widget.selectedImg),
            PostingPic(theam,widget.selectedImg),
            // Expanded(child: Container()),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  tempColor = co[index]['color'];
                  return Container(
                    child: Column(

                      children: [
                        Text('${co[index]['title']}',style: TextStyle(fontSize: 20,fontWeight: tempIndex == index ? FontWeight.w700 : FontWeight.normal),),
                        InkWell(
                          onTap: (){

                            setState(() {
                              tempIndex = index;
                              temp = co[index]['color'];
                              theam = temp;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(3),
                            height: 130,
                            width: 130,
                            child: Stack(
                              fit: StackFit.expand,
                              children:[
                                Container(
                                  margin: EdgeInsets.all(6),
                                  child: Image.asset(widget.selectedImg,fit: BoxFit.cover,),
                                ),
                                Container(

                                  color: tempColor,
                                )
                              ]

                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: co.length,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: (){},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black38,
                    ),
                        child: Text("Edit",style: TextStyle(color: Colors.white,fontSize: 20),))
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}


class HeaderPart extends StatelessWidget {
  var colour;
  var selectedImg;
  HeaderPart(var co,var img,{super.key}){
    this.colour = co;
    this.selectedImg = img;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back,size: 33,)),
          Expanded(child: Container()),
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return EditPost1(selectedImg,colour);
                }
                )
                );
              },
              child: Icon(Icons.edit,size: 33,)
          ),
          Container(child: Icon(Icons.music_note_outlined,size: 33,)),
          Expanded(child: Container()),
          InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }
                )
                );
              },
              child: Text('Next',style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.w500),))

        ],
      ),
    );
  }
}


class PostingPic extends StatefulWidget {
  var colour;
  var selectedImg;
  PostingPic(var co,var img,{super.key}) {
    this.colour = co;
    this.selectedImg = img;
  }

  @override
  State<PostingPic> createState() => _PostingPicState();
}

class _PostingPicState extends State<PostingPic> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 390,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              // color: Colors.grey.shade300,
              child: Image.asset(widget.selectedImg)
          ),
          Container(
            color: widget.colour,
          )
        ]
      ),
    );
  }
}

