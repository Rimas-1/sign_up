import 'dart:ui';

import 'package:flutter/material.dart'
    show
        AppBar,
        BorderSide,
        BoxDecoration,
        BuildContext,
        ColorScheme,
        Colors,
        Column,
        Container,
        EdgeInsets,
        Icon,
        Icons,
        Image,
        InkWell,
        InputDecoration,
        MainAxisAlignment,
        MaterialApp,
        NetworkImage,
        OutlineInputBorder,
        Padding,
        Row,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Text,
        TextFormField,
        TextStyle,
        ThemeData,
        Widget,
        runApp;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 88, 57, 94),
        title: const Text(
          "Login Screen",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(
              image: NetworkImage(
                  "https://www.pngall.com/wp-content/uploads/15/Login-PNG-Photo-180x180.png"),
              height: 350,
              width: 380,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("enter email"),
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Color.fromARGB(255, 209, 171, 184),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("enter password"),
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Color.fromARGB(255, 209, 171, 184),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      suffixIconColor: Color.fromARGB(255, 209, 171, 184),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 209, 171, 184),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.login,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "welcome",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
