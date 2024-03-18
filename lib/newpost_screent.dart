import 'package:flutter/material.dart';
import 'edit_post.dart';
import 'insta_obj.dart';

class NewPostScreent extends StatefulWidget {
  const NewPostScreent({super.key});

  @override
  State<NewPostScreent> createState() => _NewPostScreentState();
}

class _NewPostScreentState extends State<NewPostScreent> {
  String selectedPic = photos[0];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.close,size: 40,)
                  ),
                  Expanded(child: Container()),
                  const Text("New post",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),),
                  Expanded(child: Container()),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return EditPost(selectedPic);
                            })
                        );
                      },
                      child: const Text("New",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.w600),)
                  ),

                ],
              ),
            ),
            PostingPic(selectedPic),
            Container(
              margin: const EdgeInsets.all(10),

              child: Row(
                children: [
                  const Text("Recent",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
                  const Icon(Icons.arrow_drop_down_outlined,size: 30,),
                  Expanded(child: Container()),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(Icons.camera_alt_outlined,color: Colors.white,),
                  )

                ],
              ),
            ),
            Expanded(
                child: GridView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return InkWell(
                        onTap: (){

                          setState(() {
                            selectedIndex = index;
                            selectedPic = photos[index];
                          });
                        },
                        child: Stack(
                          fit: StackFit.expand,
                            children: [
                              Image.asset(photos[index],fit: BoxFit.cover,),
                              Expanded(
                                child: Container(
                                  color: selectedIndex == index ? Colors.white30 : Colors.transparent,
                                ),
                              )
                            ]
                        )
                    );
                  },
                  itemCount: photos.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2
                  ),
                ),

            ),
          ],
        ),
      ),
    );
  }
}

class PostingPic extends StatefulWidget {
  final String imagee;

  const PostingPic(this.imagee,{super.key});

  @override
  State<PostingPic> createState() => _PostingPicState();
}

class _PostingPicState extends State<PostingPic> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        color: Colors.grey.shade300,
        child: Image.asset(widget.imagee)
    );
  }
}

