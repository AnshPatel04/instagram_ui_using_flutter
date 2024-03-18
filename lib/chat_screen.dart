import 'package:flutter/material.dart';
import 'insta_obj.dart';
import 'package:gradient_borders/gradient_borders.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HeaderPart(),
          SizedBox(
            height: 10,
          ),
          SubHeaderPart(),
          SizedBox(
            height: 10,
          ),
          ChatBox(),
        ],
      ),
    );
  }
}

class HeaderPart extends StatelessWidget {
  const HeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      margin: const EdgeInsets.only(top: 40),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.grey, width: 1),
      )),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                )),
          ),
          Text(
            '${logdeinUser[0]['userId']}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
          ),
           Container(
              margin: const EdgeInsets.only(left: 1),
              child: const Icon(Icons.arrow_drop_down_outlined)),
          Expanded(
            child: Container(),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.camera_enhance,
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 4),
            child: Icon(
              Icons.edit_note_sharp,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class SubHeaderPart extends StatelessWidget {
  const SubHeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Messages",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            )),
        Expanded(child: Container()),

        const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "Requests",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.blue),
            ))
      ],
    );
  }
}

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              // if(details[index]['pendingMSG'] == true){
              return ListTile(
                leading: Container(
                  height: 100,
                  width: 60,

                  decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: GradientBoxBorder(
                            width: details[index]['story'] == true ? 3 : 0,
                            gradient: const LinearGradient(colors: [
                              Colors.amber,
                              Colors.deepOrange,
                              Colors.red,
                              Colors.purple,
                              Colors.purpleAccent,
                              Colors.pinkAccent,
                            ],
                            ))),
                    child: CircleAvatar(
                              backgroundImage: AssetImage('${details[index]['DP']}'),
                              backgroundColor: Colors.yellow,
                              radius: 100,
                            ),
                ),
                title: details[index]['pendingMSG'] == true
                    ? Text(
                        "${details[index]['uname']}",
                        style:
                        const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                      )
                    : Text(
                        "${details[index]['uname']}",
                        style:
                        const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                subtitle: Text("${details[index]['subTitle']}",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: details[index]['pendingMSG'] == true
                            ? FontWeight.w900
                            : FontWeight.w500)),
                trailing: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.notifications,
                          color: details[index]['pendingMSG'] == true
                              ? Colors.blueAccent
                              : Colors.transparent,
                        )),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: details[index]['pendingMSG'] == true
                          ? Colors.black
                          : Colors.black45,
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 5,
                thickness: 0,
                color: Colors.white,
              );
            },
            itemCount: details.length));
  }
}
