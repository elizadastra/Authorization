import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';
  bool isEmail = true;

  @override
  Widget build(BuildContext context) {
    var inputLabel = isEmail == true ? 'Email' : 'Телефон';

    return Container(
        alignment: FractionalOffset.center,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Телефон'),
                Switch(
                  value: isEmail,
                  onChanged: (value) {
                    setState(() {
                      print(value);
                      isEmail = value;
                    });
                  },
                ),
                const Text('Email'),
              ],
            ),
            Row(children: [
              Expanded(
                  child: TextField(
                      controller: nameController,
                      onChanged: (v) => nameController.text = v,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: inputLabel,
                          filled: true,
                          fillColor: const Color(0xFFF0EDED)))),
            ]),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('В формате +7')],
            ),
            Row(children: [
              Expanded(
                  child: TextField(
                controller: nameController,
                onChanged: (v) => nameController.text = v,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Пароль',
                    filled: true,
                    fillColor: const Color(0xFFF0EDED),
                    suffixIcon: FloatingActionButton(
                      backgroundColor: Colors.blue,
                      onPressed: () {
                        debugPrint("Button clicked!");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      tooltip: 'Check',
                      child: const Icon(Icons.check),
                    )),
              )),
            ]),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Забыли пароль?',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              ),
            ),
            SizedBox(
              height: 50,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color(0xFF39A2DD),
                child: const Center(
                  child: Text(
                    "Войти",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
