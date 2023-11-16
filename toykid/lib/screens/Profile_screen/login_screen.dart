import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toykid/model/user_profile_model.dart';
import 'package:toykid/screens/home/home_screen.dart';




class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super (key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState> ();
  
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(autovalidateMode:AutovalidateMode.onUserInteraction,
        key: formKey, child: ListView(
          children: [
            TextFormField(
              controller: nameController,
              decoration:const InputDecoration(
                prefixIcon: Icon(Icons.account_circle_rounded),
                labelText: 'username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,
            ),
            TextFormField(
              controller: emailController,
              decoration:const InputDecoration(
                prefixIcon: Icon(Icons.email_rounded),
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration:const InputDecoration(
                prefixIcon: Icon(Icons.password_rounded),
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20,
            ),

            ElevatedButton(
  onPressed: () {
    if (formKey.currentState!.validate()) {
      // Validasi berhasil
      if (!emailController.text.contains('@gmail.com')) {
        // Alamat email tidak mengandung '@gmail.com', tampilkan alert
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Peringatan'),
              content: Text('Alamat email harus menggunakan @gmail.com'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        // Alamat email valid, lakukan login
        userProvider.login(nameController.text, emailController.text, passwordController.text);
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
          (Route) => false,
        );
      }
    }
  },
  child: Text('Login'),
            ),
          ],
        ), 
        ),
      )
    );
  }
}