import 'package:flutter/material.dart';
import 'package:flutter_application_2/myHomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late String name;
  TextEditingController controller = new TextEditingController();

  void click() {
    this.name = controller.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyHomePage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          controller: this.controller,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: "Type Your Name:",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 5, color: Colors.black)),
              suffixIcon: IconButton(
                icon: Icon(Icons.done),
                onPressed: this.click,
                splashColor: Colors.blue,
                tooltip: "Submit",
              )),
        ),
      ),
    );
  }
}
