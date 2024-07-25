import 'package:flutter/material.dart';
import 'package:login/presentation/auth_screen/signupscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool passwordVisible = false;

  void passwordVisibleButton() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset('images/signUp.png')),
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 163, 162, 162)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 108, 186, 250),
                              width: 2)),
                    ),
                  ),
                ),
                TextField(
                  obscureText: !passwordVisible,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 106, 180, 240),
                              width: 2)),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: passwordVisibleButton,
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: const WidgetStatePropertyAll(Size(130, 55)),
                      backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 134, 194, 243)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(height: 30),
                const Text(
                  "Forgot  Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                const SizedBox(height: 30),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  const Signupscreen()));
                    },
                    child: const Text("Not a member? Sign up now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
