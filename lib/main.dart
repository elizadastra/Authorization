import 'package:authorization/screens/signin.dart';
import 'package:authorization/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Authorization());
}

class Authorization extends StatelessWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFE5E5E5)),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.speed),
            color: Colors.blue,
          ),
          actions: const [],
          title: const Text('First Screen of My apI'),
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(color: Colors.black),
        ),
        body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'Авторизация',
                  ),
                  Tab(text: 'Регистрация'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                SignIn(),
                SignUp(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const SizedBox(
          height: 57,
          child: BottomAppBar(
            child: Text(
              'Публичная оферта',
              textAlign: TextAlign.center,
            ),
            color: Color(0xFFA4AFC1),
          ),
        ),
      ),
    );
  }
}
