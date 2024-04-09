import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints:
                const BoxConstraints(maxHeight: double.infinity, maxWidth: 300),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Username'),
                  controller: _usernameTextController,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Password'),
                  controller: _passwordTextController,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber[600],
                    ),
                    child: const Text('Enter'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
