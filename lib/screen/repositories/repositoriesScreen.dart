import 'package:flutter/material.dart';
import 'package:github_content_list/screen/repositories/repositoriesList.dart';

class RepositoriesScreen extends StatefulWidget {
  const RepositoriesScreen({ Key? key }) : super(key: key);

  @override
  _RepositoriesScreenState createState() => _RepositoriesScreenState();
}

class _RepositoriesScreenState extends State<RepositoriesScreen> with SingleTickerProviderStateMixin{

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Github content'),
      ),
      body: Center(
        child: RepositoriesList(),
      ),
    );
  }
}