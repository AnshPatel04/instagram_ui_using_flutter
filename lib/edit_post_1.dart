import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EditPost1 extends StatefulWidget {
  EditPost1(var img,var theam,{super.key}){
    this.selectedImg = img;
    this.theam = theam;
  }
  var theam;
  var selectedImg;

  @override
  State<EditPost1> createState() => _EditPost1State();
}

class _EditPost1State extends State<EditPost1> {
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderPart(),
            PostingPic(widget.theam,widget.selectedImg),
            Expanded(child: Container()),
            RangeSlider(
              values: values,
              labels: labels,
              divisions: 100,
              activeColor: Colors.black,
              inactiveColor: Colors.grey.shade400,
              min: 0,
              max: 100,
              onChanged: (newValue){
                values = newValue;
                setState(() {

                });
              },
            ),
            Expanded(child: Container()),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle
                    ),
                    padding: const EdgeInsets.all(5),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.close,color: Colors.white,)),
                  ),
                  Expanded(child: Container()),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle
                    ),
                    padding: const EdgeInsets.all(5),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.chevron_right_outlined,color: Colors.white,)),
                  )
                ],
              ),
            )
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
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Text('Lux',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 28),)
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
