import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(const Posts());
}

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'JSON Renderização',
      home: JsonListView(),
    );
  }
}

class JsonListView extends StatelessWidget {
  final String jsonData = '''
  [
    {
      "userId": 1,
      "id": 1,
      "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    },
    {
      "userId": 1,
      "id": 2,
      "title": "qui est esse",
      "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"
    }
  ]
  ''';

  const JsonListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> jsonList = json.decode(jsonData);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de JSON'),
      ),
      body: ListView.builder(
        itemCount: jsonList.length,
        itemBuilder: (context, index) {
          final jsonItem = jsonList[index];
          return ListTile(
            title: Text(jsonItem['title']),
            subtitle: Text(jsonItem['body']),
            onTap: () {
              // Adicione qualquer ação desejada aqui
            },
          );
        },
      ),
    );
  }
}
