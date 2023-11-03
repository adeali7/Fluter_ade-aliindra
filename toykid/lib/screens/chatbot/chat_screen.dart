import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toykid/model/chat_provider.dart';
import 'package:http/http.dart' as http; // Import package http
import 'dart:convert';

class ChatScreen extends StatefulWidget {
  static const String routeName = '/chatbot';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textController = TextEditingController();
  String _response = " ";

  Future<void> _submitForm() async {
    String apiKey = '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'; // Ganti 'YOUR_API_KEY' dengan API key yang sesuai
    if (_formKey.currentState!.validate()) {
      const apiUrl = 'https://api.openai.com/v1/completions';

      final response = await http.post(
        Uri.parse(apiUrl), // Perbaiki uri menjadi Uri.parse
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8', // Perbaiki charset
          'Authorization': 'Bearer $apiKey',
        },
        // body: jsonEncode(<String, dynamic>{
        //   "model": "text-davinci-003",
        //   'prompt':
        //       "jika ada yang bertanya boneka laki laki harga berapa, silahkan di jawab harga boneka Rp.150.000 " +
        //           _textController.text, // Gabungkan prompt dengan input pengguna
        //   'max_tokens': 50, // Perbaiki 'max_token' menjadi 'max_tokens'
        // }),

        body: jsonEncode(<String, dynamic>{
            "model": "text-davinci-003",
            "prompt":
                "jika ada yang bertanya boneka laki laki harga berapa, silahkan dijawab harga boneka Rp.150.000 " +
                   _textController.text, // Gabungkan prompt dengan input pengguna
           "max_tokens": 50, // Perbaiki 'max_token' menjadi 'max_tokens'
          }),
      );

      // Periksa response dan lakukan sesuai kebutuhan
      if (response.statusCode == 200) {
        setState(() {
          final responseData = json.decode(response.body);
           _response = responseData['choices'][0]['text'];
          print('Respon sukses: ${responseData['choices'][0]['text']}');
        });
       
      } else {
        // Handle error response
        print('Gagal mendapatkan respons. kode status: ${response.statusCode}');
      }
    } else {
      print('insert value');
    }
  }

  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _textController,
                decoration: InputDecoration(labelText: 'Ketik pesan...'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      _submitForm(); // Panggil _submitForm saat tombol diklik
                    },
                    icon: Icon(Icons.send),
                  ),
                  Text('response : $_response'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}