import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = true;
  bool isSwitched = false;
  double slideValue = 0.4;
  String? selectedValue = "e2";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            DropdownButton(
              value: selectedValue,
              items: [
                DropdownMenuItem(child: Text("Item 1"), value: "e1"),
                DropdownMenuItem(child: Text("Item 2"), value: "e2"),
                DropdownMenuItem(child: Text("Item 3"), value: "e3"),
              ],
              onChanged: (String? value) =>
                  setState(() => selectedValue = value),
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(controller.text),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
              title: Text("This is title"),
            ),
            Switch(
              value: isSwitched,
              onChanged: (value) => setState(() => isSwitched = value),
            ),
            SwitchListTile(
              value: isSwitched,
              onChanged: (value) => setState(() => isSwitched = value),
              title: Text("Title Switch ListTile"),
            ),
            //provides OS level look
            SwitchListTile.adaptive(
              value: isSwitched,
              onChanged: (value) => setState(() => isSwitched = value),
              title: Text("Title Switch ListTile"),
            ),
            Slider(
              max: 10.0,
              divisions: 10,
              value: slideValue,
              onChanged: (value) {
                setState(() {
                  slideValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              child: Text("Elevated Button"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            FilledButton(onPressed: () {}, child: Text("Filled Button")),
            TextButton(onPressed: () {}, child: Text("Text Button")),
            OutlinedButton(onPressed: () {}, child: Text("Text Button")),
            CloseButton(),
            Image.network(
              "https://exocodelabs.tech/images/logo.png",
              fit: BoxFit.contain,
              height: 300,
              width: 300,
            ),
            GestureDetector(
              onTap: () {
                print("Tapped");
              },
              child: Image.network(
                "https://exocodelabs.tech/images/logo.png",
                fit: BoxFit.contain,
                height: 300,
                width: 300,
              ),
            ),
            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                print("Tapped");
              },
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
