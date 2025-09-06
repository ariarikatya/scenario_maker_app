import 'package:flutter/material.dart';
import 'package:scenario_maker_app/services/helpers.dart';
import 'package:scenario_maker_app/ui/screens/authorization/forgot_pass_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Welcome!', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your Email',
                    border: OutlineInputBorder()
                  ),
                  validator: validateEmail,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(),
                     ),
                     obscureText: true,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton (
                     onPressed: () {
                      _formKey.currentState!.validate();
                     }, 
                    child: const Text('Login')
                ),
                const SizedBox(width: 20),
                ElevatedButton (
                     onPressed: () {
                       _formKey.currentState!.validate();
                     }, 
                    child: const Text('Register')
                ),
                  ],
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPasswordScreen(),
                    ),
                    );
                  }, 
                  child: const Text(
                    'Forgot password?')
                ),
              ],
            ),
            ),
          ),
      ),
    );
  }
}