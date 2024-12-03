import 'package:firebase/models/authentication_model.dart';
import 'package:firebase/screens/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  final AuthenticationModel _authModel = AuthenticationModel();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async{
    try{
      await _authModel.loginWithEmailAndPassword(_emailController.text, _passwordController.text);
      Navigator.pop(context, true);
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _login, child: Text('Login'),
            ),
            SizedBox(height: 10),
            Center(
              child: TextButton(
                  onPressed: (){
                    Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context)=> RegisterScreen())
                    );
                  }, 
                  child: Text('Henüz üye değil misiniz ? Hemen üye ol!')),
            )
          ],
        ),
      ),
    );

  }
}