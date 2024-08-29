import 'package:flutter/material.dart';

class NotificationPages extends StatefulWidget {
  const NotificationPages({super.key});

  @override
  State<NotificationPages> createState() => _NotificationPagesState();
}

class _NotificationPagesState extends State<NotificationPages> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? userName = "";
  String? email = "";
  String? phone = "";
  String? address = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                "User Register",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              validator: (val){
                if(val!.isEmpty){
                  return "User required";
                }
              },
              onChanged: (val){
                setState(() {
                  userName = val;
                });
                print(userName);
              },
              decoration: const InputDecoration(
                isDense: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(
                    color: Color(0xFFDDDDDD),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  ),
                ),
                labelText: "User Name",
                prefixIcon: Icon(Icons.account_circle),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 350,
              child: TextFormField(
                validator: (val){
                  if(val!.isEmpty){
                    return "Email requred";
                  }
                },
                onChanged: (val){
                  setState(() {
                    email = val;
                  });
                  print(email);
                },
                decoration: const InputDecoration(
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Color(0xFFDDDDDD),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email_rounded),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 350,
              child: TextFormField(
                validator: (val){
                  if(val!.isEmpty){
                    return "Phone required";
                  }
                },
                onChanged: (val){
                  setState(() {
                    phone = val;
                  });
                },
                decoration: const InputDecoration(
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Color(0xFFDDDDDD),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  labelText: "Phone",
                  prefixIcon: Icon(Icons.phone_android_rounded),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: 350,
              child: TextFormField(
                validator: (val){
                  if(val!.isEmpty){
                    return "Address requred";
                  }
                },
                onChanged: (val){
                  setState(() {
                    address = val;
                  });
                },
                decoration: const InputDecoration(
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Color(0xFFDDDDDD),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  labelText: "Address",
                  prefixIcon: Icon(Icons.home),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if(formKey.currentState!.validate()){
                }
              },
              child: const Text('Submit'),
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: SizedBox(
                            // color: Colors.blue,
                            width: double.infinity,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Username"),
                                Text(":")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            width: double.infinity,
                            child: Text("${userName}"),
                            // color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: SizedBox(
                            // color: Colors.blue,
                            width: double.infinity,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Password"),
                                Text(":")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            width: double.infinity,
                            child: Text("${email}"),
                            // color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: SizedBox(
                            // color: Colors.blue,
                            width: double.infinity,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Phone"),
                                Text(":")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            width: double.infinity,
                            child: Text("${phone}"),
                            // color: Colors.red,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: SizedBox(
                            // color: Colors.blue,
                            width: double.infinity,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Address"),
                                Text(":")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            width: double.infinity,
                            child: address == null?Container():Text("$address"),
                            // color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
