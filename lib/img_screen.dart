import 'package:flutter/material.dart';

class DemoPera extends StatelessWidget {
  var post, userId, userPic, isLiked;

  DemoPera(post,userId, userPic, {super.key}) {
    this.post= post; this.userId= userId; this.userPic = userPic;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Hero(
        tag: 'post',
        child: InkWell(
          child: Stack(
            fit: StackFit.expand,
            children: [
              InkWell(

                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    'assets/images/blur.jpg',
                    fit: BoxFit.cover,
                  )),
              Container(
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              color: Colors.white,
                            ),
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(userPic),
                                    backgroundColor: Colors.yellow,
                                    radius: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(userId,
                                      style: const TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Image.asset(post),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                              color: Colors.white,
                            ),
                            height: 60,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 40,
                                ),
                                Icon(
                                  Icons.account_circle_outlined,
                                  size: 40,
                                ),
                                Icon(
                                  Icons.share_outlined,
                                  size: 40,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  size: 40,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    )
        //Image.asset(post)
        );
  }
}
