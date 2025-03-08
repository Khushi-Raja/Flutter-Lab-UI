import 'package:flutter/material.dart';
import 'package:my_second/api/api_form.dart';
import 'package:my_second/api/my_api.dart';

class ApiData extends StatefulWidget {
  const ApiData({super.key});

  @override
  State<ApiData> createState() => _ApiDataState();
}

class _ApiDataState extends State<ApiData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return ApiForm(null);
                },
              )).then((value) {
                if (value == true) {
                  setState(() {});
                }
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: FutureBuilder(
        future: MyApi().selectAllData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          snapshot.data![index]['name'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return ApiForm(snapshot.data![index]);
                            },
                          )).then((value) {
                            if (value == true) {
                              setState(() {});
                            }
                          });
                        },
                        icon: Icon(
                          Icons.edit,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          bool confirmationDelete = await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Delete Confirmation"),
                                content: Text(
                                    "Are you sure you want to delete user ?"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(false);
                                    },
                                    child: Text("Cancel"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(true);
                                    },
                                    child: Text("Delete"),
                                  ),
                                ],
                              );
                            },
                          );
                          if (confirmationDelete != null &&
                              confirmationDelete) {
                            await MyApi()
                                .deleteDataById(snapshot.data![index]['id'])
                                .then((value) {
                              setState(() {});
                            });
                          }
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
