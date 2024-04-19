import 'package:flutter/material.dart';
import './widgets/input_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Page', 
              style: GoogleFonts.poppins(fontSize: size * 0.050),
            ),
            const SizedBox(
              height: 30,
            ),
            InputWidget(
              hintText: 'Email',
              obscureText: false,
              controller: _emailController,
            ),
            const SizedBox(
              height: 20,
        ),
        InputWidget(
          hintText: 'Password',
          obscureText: true,
          controller: _passwordController,
        ),
        const SizedBox(
              height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 0,
            padding: const EdgeInsets.symmetric(
              horizontal: 50, 
              vertical: 15
              ),
          ),
          onPressed: () {},
            child: const Text('Login'),
        ),
        ],
      ), 
      ),
    );
  }
}
