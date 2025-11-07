import 'package:flutter/material.dart';
import 'package:wotcher/theme/app_colors.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wotcher')),
      body: _Form(),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form();

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final _emailController = TextEditingController();
  String? _errorMessage;

  void auth() {
    if (_emailController.text == 'opa') {
      _errorMessage = null;
      Navigator.pushReplacementNamed(context, '/main');
    } else {
      _errorMessage = 'Email invalid';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFF252E34),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                _FormTitle(),
                SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(color: Color(0xFFA2ADB3), fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      controller: _emailController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        isCollapsed: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFA2ADB3)),
                        ),
                        errorText: _errorMessage,
                        hintText: 'Enter email address',
                        hintStyle: TextStyle(color: Color(0xFFA2ADB3)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 38,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFE9B600), Color(0xFFF99700)],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: auth,
                    child: Text('Sign Up'),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'By signing up you agree to the Terms of Use and Privacy Policy',
                  style: TextStyle(color: Color(0xFFA2ADB3), fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _FormTitle extends StatelessWidget {
  const _FormTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Create New Profile',
      style: TextStyle(
        color: AppColors.foreground,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
