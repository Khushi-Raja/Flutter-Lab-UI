import 'package:flutter/material.dart';
import 'package:my_second/api/my_api.dart';
import 'package:my_second/model_class/model_user.dart';

class ApiForm extends StatefulWidget {
  Map<String, dynamic>? map;

  ApiForm(Map<String, dynamic>? map) {
    this.map = map;
  }

  @override
  State<ApiForm> createState() => _ApiFormState();
}

class _ApiFormState extends State<ApiForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.map != null) {
      nameController.text = widget.map!["name"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Enter name"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    if (widget.map == null) {
                      await insertUser().then((value) {
                        Navigator.of(context).pop(true);
                      });
                    } else {
                      await editUser().then((value) {
                        Navigator.of(context).pop(true);
                      });
                    }
                  }
                },
                child: Text("Submit"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> insertUser() async {
    ModelUser user = ModelUser();
    user.name = nameController.text;
    Map<String, dynamic> map = user.mapConverter();
    await MyApi().insert(map);
  }

  Future<void> editUser() async {
    ModelUser user = ModelUser();
    user.name = nameController.text;
    Map<String, dynamic> map = user.mapConverter();
    await MyApi().editDataById(map, widget.map!['id']);
  }
}
