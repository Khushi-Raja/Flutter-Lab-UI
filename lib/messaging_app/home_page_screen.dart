import 'package:flutter/material.dart';
import 'package:my_second/messaging_app/activate_chats.dart';
import 'package:my_second/messaging_app/data_file.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/images/animegirl1.jpg",
                        height: 65,
                        width: 65,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: CustomText(
                      text: "Khushi Raja",
                      fontWeight: FontWeight.w600,
                      favColor: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: CustomText(
                      text: "khushiraja@gmail.com",
                      fontWeight: FontWeight.w400,
                      favColor: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              color: Colors.amber,
              width: MediaQuery.of(context).size.width,
            ),
            CustomListTile(text: "Profile",icon: Icons.person),
            CustomListTile(text: "Inbox",icon: Icons.inbox),
            CustomListTile(text: "Home",icon: Icons.home),
            CustomListTile(text: "Favorite",icon: Icons.favorite),
            CustomListTile(text: "Logout",icon: Icons.logout),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: CustomText(
                text: "Messages",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                favColor: Color(0xFF113953),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF113953),
                      width: 1.75,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF113953), width: 1.75),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Search",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade400,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 100,
              child: ListView.builder(
                itemCount: chatMessages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Container(
                        color: Colors.amber,
                        child: Image.asset(
                          chatMessages[index].image,
                          height: 45,
                          width: 80,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView.builder(
                itemCount: chatMessages.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "chatPage");
                      },
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Image.asset(
                                  chatMessages[index].image,
                                  width: 60,
                                ),
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10),
                                child: Column(
                                  children: [
                                    CustomText(
                                      text: chatMessages[index].name,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    CustomText(
                                      text: chatMessages[index].message,
                                      fontWeight: FontWeight.w400,
                                      favColor: Colors.grey.shade600,
                                      fontSize: 17,
                                    )
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CustomText(
                                        text: chatMessages[index].date,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                  alignment: Alignment.topRight,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 10,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF113953),
        child: Icon(
          Icons.message,
          color: Colors.white,
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

Widget CustomListTile({
  required String text,
  required IconData icon,
  Color? color,
}) {
  return ListTile(
    leading: Icon(icon,color: color,),
    title: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: CustomText(
        text: text,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}