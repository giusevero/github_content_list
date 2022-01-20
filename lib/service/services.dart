import 'package:github_content_list/model/githubRepository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Service {

  final baseUrl = "https://api.github.com/search/repositories?q=language:dart&sort=stars";


  Future getGithubRepositories() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final listRepositories = (data['items'] as List).map((e) => GithubRepository.fromJson(e)).toList();
        return listRepositories;
    } else {
      throw Exception('Erro ao carregar álbum');
    }
  }
  
}