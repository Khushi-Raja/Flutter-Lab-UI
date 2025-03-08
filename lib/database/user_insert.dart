import 'package:flutter/material.dart';
import 'package:my_second/database/my_database.dart';
import 'package:my_second/database/user_detail.dart';

class UserInsert extends StatefulWidget {
  Map<String, dynamic>? map;

  UserInsert(Map<String, dynamic>? map) {
    this.map = map;
  }

  @override
  State<UserInsert> createState() => _UserInsertState();
}

class _UserInsertState extends State<UserInsert> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.map != null) {
      nameController.text = widget.map!["userName"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 8, right: 8),
        child: Column(
          children: [
            Image.asset(
              "assets/images/pooh.png",
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* Enter user name";
                  } else {
                    return null;
                  }
                },
                controller: nameController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter userName"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (widget.map == null) {
                    insertDetail().then(
                      (value) => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return UserDetail();
                          },
                        ),
                      ),
                    );
                  } else {
                    updateDetail().then(
                      (value) => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return UserDetail();
                          },
                        ),
                      ),
                    );
                  }
                }
              },
              child: Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> insertDetail() async {
    Map<String, dynamic> map = {};
    map["userName"] = nameController.text.toString();
    await MyDatabase().insertDetail(map);
  }

  Future<void> updateDetail() async {
    Map<String, dynamic> map = {};
    map["userId"] = widget.map!["userId"];
    map["userName"] = nameController.text.toString();
    await MyDatabase().updateDataById(map);
  }
}
