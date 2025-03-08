import 'package:flutter/material.dart';
import 'package:my_second/database/my_database.dart';
import 'package:my_second/database/user_insert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () async {
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      await pref.remove("isRememberMe");
                      print("Removed");
                    },
                    icon: Icon(Icons.logout)),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return UserInsert(null);
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FutureBuilder(
              future: MyDatabase().copyPasteAssetFileToRoot(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                } else {
                  return FutureBuilder(
                    future: MyDatabase().getDetails(),
                    builder: (context, snapshot1) {
                      if (snapshot1.connectionState ==
                          ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot1.hasError) {
                        return Center(
                          child: Text("Error: ${snapshot1.error}"),
                        );
                      } else {
                        return Expanded(
                          child: ListView.builder(
                            itemCount: snapshot1.data!.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber,
                                ),
                                height: 50,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                            snapshot1.data![index]["userName"]),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () async {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                              return UserInsert(snapshot1.data![index]);

                                            },));
                                          },
                                          child: Icon(Icons.edit),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            int deletedRows = await MyDatabase()
                                                .deleteDataById(
                                              snapshot1.data![index]["userId"],
                                            );
                                            if (deletedRows > 0) {
                                              setState(() {});
                                            } else {
                                              print("Deletion failed");
                                            }
                                          },
                                          child: Icon(Icons.delete),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      }
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
