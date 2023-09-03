import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/home_page.dart';
import 'package:flutter_application_17/pages/signup.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _rememberMe = false;
  bool _isPasswordVisible = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showEmptyFieldsAlert() {
    //a class for check whether the text field is filled
    showDialog(
      //alert message
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Empty Fields'),
          content: const Text('Please fill both Email and Password fields.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _performSignIn() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _showEmptyFieldsAlert();
    } else {
      //  sign-in logic
      print('Email: $email, Password: $password');

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 27.0), // Add padding to the top of the photo
                child: Image.asset(
                  'assets/splash_image.png',
                  height: 230, // Adjust the height
                ),
              ),
              const SizedBox(height: 3),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RedHatDisplay',
                    ),
                  ),
                  Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'RedHatDisplay',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RedHatDisplay',
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 133, 133, 133),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    border: InputBorder.none,
                    hintText: 'Enter your Email',
                    hintStyle: TextStyle(fontFamily: 'RedHatDisplay'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RedHatDisplay',
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 133, 133, 133),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(12),
                    border: InputBorder.none,
                    hintText: 'Enter your Password',
                    hintStyle: const TextStyle(
                        fontFamily: 'RedHatDisplay'), //hint text
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible //password visibility icon
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value!; //checkbox
                      });
                    },
                    checkColor: const Color.fromARGB(
                        255, 255, 255, 255), // Color of the tick
                    activeColor: const Color.fromARGB(
                        255, 25, 142, 182), // Checkbox background color
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                      color: Color.fromARGB(255, 25, 142, 182),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RedHatDisplay',
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      // Navigate to forgot password page
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 25, 142, 182),
                        fontFamily: 'RedHatDisplay',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              ElevatedButton(
                onPressed: _performSignIn,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 25, 142, 182),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Add border radius
                  ),
                  minimumSize:
                      const Size(double.infinity, 45), // Set button height
                ),
                child: const Text(
                  ' Sign In',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'RedHatDisplay',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 7),
              Column(
                children: [
                  const Text(
                    "Don't have an account?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'RedHatDisplay',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: Color.fromARGB(255, 28, 107, 144),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RedHatDisplay',
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
