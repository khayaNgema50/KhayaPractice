import 'package:flutter/material.dart';
import 'package:khaya_practice/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        backgroundColor: Colors.blue[500],
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/img/stadium.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign In",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 50),
                TextFormField(
                  style: const TextStyle(color: Colors.black), // Set text color to white
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black), // Set label color to white
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email, color: Colors.black), // Set icon color to white
                    fillColor: Colors.white, // Set background color to white
                    filled: true, // Enable filling the background color
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  style: const TextStyle(color: Colors.black), // Set text color to white
                  obscureText: true,
                  decoration: const  InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black), // Set label color to white
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock, color: Colors.black), // Set icon color to white
                    fillColor: Colors.white, // Set background color to white
                    filled: true, // Enable filling the background color
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => const Home())
                         );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[500],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
