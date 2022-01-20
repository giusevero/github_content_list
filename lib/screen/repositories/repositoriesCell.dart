import 'package:flutter/material.dart';
import 'package:github_content_list/model/githubRepository.dart';

class RepositoriesCell extends StatelessWidget {
  GithubRepository repository;
  RepositoriesCell(this.repository);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(repository.owner.avatarUrl),
              ),
            ),
            Expanded(
              child: Padding(padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
              child: RepositoryCellTexts(repository),
              )
              )
          ],
        ),
      ),
    );
  }
}

class RepositoryCellTexts extends StatelessWidget {

  GithubRepository repository;
  RepositoryCellTexts(this.repository);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Project: ${repository.name}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                'Author: ${repository.owner.login}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'Stars: ${repository.stargazersCount}',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
              Text(
                'Forks: ${repository.forksCount}',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

