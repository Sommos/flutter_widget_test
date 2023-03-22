import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: (){
              debugPrint("Action Button Pressed");
            }, 
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/Flutter.png"),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "This Is A Text Widget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.cyan : Colors.pink,
              ),
              onPressed: () {
                debugPrint("Elevated Button Pressed");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined Button Pressed");
              },
              child: const Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button Pressed");
              },
              child: const Text("Text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Row has been pressed");
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
                Text("Row Widget"),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
              ]),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBoolean) {
                  setState(() {
                    isSwitch = newBoolean;
                  });
                }),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBoolean) {
                setState(() {
                  isCheckbox = newBoolean;
                });
              },
            ),
            Image.network("https://wallpapercave.com/wp/AUW7BjA.jpg")
          ],
        ),
      ),
    );
  }
}
