import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('''
About Us Page
============

Introduction
------------
This app is a recipe app that helps you discover new recipes and cook delicious meals. With this app, you can search for recipes. 

Creators
--------
I am passionate about food and technology.This a basic project,I have just got my hands on.

* Sarthak Mohanty: CEO and lead developer,
* CoPilot AI : Bug fixing and UI Improvment,

Development Process
-----------------
I have developed our app using Flutter, a cross-platform framework for building natively compiled applications. I faced several challenges during the development process, such as integrating third-party APIs and optimizing performance. However, I found solutions and created an app that I'm proud of.

Features
--------
This app has Basic key features that make it stand out from other recipe apps.
* Recipe search: Search for recipes based on ingredients, cooking time, and dietary restrictions.

'''
                )
                ]
                ),
          ),
        ),
      )
    );
  }
}