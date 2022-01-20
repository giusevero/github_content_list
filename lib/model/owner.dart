class Owner {
  int id;
  String login, avatarUrl, htmlUrl;

  Owner.fromJson(Map<String, dynamic> json) 
  : id = json['id'],
  login = json['login'],
  avatarUrl = json['avatar_url'],
  htmlUrl = json['html_url'];

}