import 'package:github_content_list/model/owner.dart';

class GithubRepository {
  int id, forksCount, stargazersCount;
  String name, fullName, htmlUrl;
  Owner owner;

  GithubRepository.fromJson(Map<String, dynamic> json) 
  : id = json['id'],
  name = json['name'],
  fullName = json['full_name'],
  htmlUrl = json['html_url'],
  forksCount = json['forks_count'],
  stargazersCount = json['stargazers_count'],
  owner = Owner.fromJson(json['owner']);

}