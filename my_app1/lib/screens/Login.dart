import 'package:flutter/material.dart';
import 'package:my_app1/data/user_services.dart';

class LoginScreen extends StatelessWidget {
  @override
  var use = TextEditingController();
  var jop = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "add user",
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
                controller: use,
                decoration: InputDecoration(
                    labelText: "Enter user",
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(17.0),
                      ),
                    )),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
                controller: jop,
                decoration: InputDecoration(
                    labelText: "Enter Your Jop",
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(17.0),
                      ),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(10.0))),
                  child: Text("Add"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      dynamic body = {"name": use.text, "jop": jop.text};
                      print(UserServices().postJop(body));
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
