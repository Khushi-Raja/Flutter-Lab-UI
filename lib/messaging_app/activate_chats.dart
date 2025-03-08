import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:my_second/messaging_app/home_page_screen.dart';

class ActivateChats extends StatelessWidget {
  const ActivateChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: AppBar(
            leadingWidth: 30,
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    "assets/images/dumbo.png",
                    height: 45,
                    width: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: CustomText(
                    text: "Dombo",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.call),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.video_call),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomClipPathLeft(text: "Hi!, How are you?? "),
                      CustomAlignChatRight(
                          text:
                              "Hi! I'm fine thanks for asking.Hope you are doing fine too... "),
                      CustomClipPathLeft(
                          text: "So what are you're plans for this weekend?"),
                      CustomAlignChatRight(
                          text:
                              "I don't know.Do you want to get together or something??"),
                      CustomClipPathLeft(
                          text: "That sounds like a good plan..."),
                      CustomAlignChatRight(
                          text: "Maybe we should go out to eat beforehand!"),
                      CustomClipPathLeft(
                          text: "It is fine to me.Where do you want to meet?"),
                      CustomAlignChatRight(
                          text: "Let's meet at amusement park!"),
                      CustomClipPathLeft(
                          text: "I have not gone there for a long time!"),
                      CustomAlignChatRight(text: "When should we meet?"),
                      CustomClipPathLeft(text: "Why don't we meet at 2AM"),
                      CustomAlignChatRight(text: "Okay 😁"),
                      CustomClipPathLeft(
                          text:
                              "Looking forward to it! It's going to be a blast!"),
                      CustomAlignChatRight(text: "Yeah!!!🥳🥳"),
                      CustomClipPathLeft(
                          text:
                              "I'm glad you're excited! It's been a whilesince I visited\nthe amusement park."),
                      CustomAlignChatRight(
                          text:
                              "Same here! It's going to be a fun-filled day. 😄"),
                      CustomClipPathLeft(
                          text:
                              "By the way, have you been on the new roller coaster they\nrecently added?"),
                      CustomAlignChatRight(
                          text:
                              "No, I haven't! I heard it's thrilling.Let's definitely try it out!"),
                      CustomClipPathLeft(
                          text: "Awesome! I love trying out new rides."),
                      CustomAlignChatRight(
                          text:
                              "Me too! The adrenaline rush is the best part."),
                      CustomClipPathLeft(
                          text:
                              "What other activities do you enjoy at the amusement park?"),
                      CustomAlignChatRight(
                          text:
                              "I enjoy playing carnival games and winning prizes."),
                      CustomClipPathLeft(
                          text:
                              "Sounds like fun! Maybe we can compete in some games."),
                      CustomAlignChatRight(
                          text: "Challenge accepted! Let the games begin! 🎉"),
                      CustomClipPathLeft(
                          text:
                              "Haha! It's going to be a friendly competition."),
                      CustomAlignChatRight(
                          text: "Absolutely! The more,the merrier. 😊"),
                      CustomClipPathLeft(
                          text: "I'm getting excited just thinking about it!"),
                      CustomAlignChatRight(
                          text:
                              "Me too! It's going to be an unforgettable day."),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 65,
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type something...",
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget CustomText({
  required String text,
  double? fontSize,
  Color? favColor,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: favColor,
      fontWeight: fontWeight,
    ),
  );
}

Widget CustomClipPathLeft({required String text}) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, right: 60),
    child: ClipPath(
      clipper: LowerNipMessageClipper(MessageType.receive),
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child:
            CustomText(text: text, fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
  );
}

Widget CustomAlignChatRight({required String text}) {
  return Container(
    margin: EdgeInsets.only(top: 8, left: 60),
    child: Align(
      alignment: Alignment.topRight,
      child: ClipPath(
        clipper: LowerNipMessageClipper(MessageType.send),
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
          child:
              CustomText(text: text, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}