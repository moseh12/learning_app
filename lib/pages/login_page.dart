import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:learning_app/pages/forgot_passward.dart';
import 'package:learning_app/pages/register.dart';
 // Import the reset password page

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signIn() async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        Navigator.pushReplacementNamed(context, '/home');
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to sign in: ${e.message}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              "assets/images/signIn01.png",
              width: MediaQuery.of(context).size.width * 0.9,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                const Text(
                  "Hello",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                const Text(
                  "Sign in to your account",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.1),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.email,
                                size: MediaQuery.of(context).size.width * 0.06,
                                color: Colors.grey,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      MediaQuery.of(context).size.width * 0.01),
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      MediaQuery.of(context).size.width * 0.1),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      MediaQuery.of(context).size.width * 0.1),
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      MediaQuery.of(context).size.width * 0.1),
                                ),
                                borderSide: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 225, 121, 243),
                                  width:
                                      MediaQuery.of(context).size.width * 0.008,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field cannot be empty';
                              }
                              if (!value.contains('@')) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.1),
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: MediaQuery.of(context).size.width * 0.06,
                                color: Colors.grey,
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      MediaQuery.of(context).size.width * 0.01),
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      MediaQuery.of(context).size.width * 0.1),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      MediaQuery.of(context).size.width * 0.1),
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      MediaQuery.of(context).size.width * 0.1),
                                ),
                                borderSide: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 225, 121, 243),
                                  width:
                                      MediaQuery.of(context).size.width * 0.008,
                                ),
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field cannot be empty';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ForgotPasswordPage(),
                                ),
                              );
                            },
                            child: const Text(
                              "Forgot your password?",
                              style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            GestureDetector(
                              onTap: _signIn,
                              child: Material(
                                elevation: 4,
                                borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height * 0.1,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 255, 230, 85),
                                        Color.fromARGB(255, 176, 74, 166),
                                      ],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topLeft,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.height * 0.1,
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: IconButton(
                                    onPressed: _signIn,
                                    icon:
                                        const Icon(Icons.navigate_next_rounded),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account? ",
                            style: TextStyle(fontSize: 14),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const RegisterPage();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Create",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2.0,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              "assets/images/signIn02.png",
              height: MediaQuery.of(context).size.height * 0.28,
            ),
          ),
        ],
      ),
    );
  }
}
