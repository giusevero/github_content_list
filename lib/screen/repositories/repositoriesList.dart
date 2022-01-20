import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:github_content_list/model/githubRepository.dart';
import 'package:github_content_list/store/githubRepository_Store.dart';
import 'repositoriesCell.dart';
import 'package:mobx/mobx.dart';

class RepositoriesList extends StatelessWidget {

  GithubRepositoryStore store = GithubRepositoryStore();
  late ScrollController _controller;

  RepositoriesList() {
    store.getTheGithubRepositories();
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
  }

  void _scrollListener() {
    print(_controller.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    final future = store.githubRepositories;

    return Observer(
      builder: (_) {
        switch (future.status) {
          case FutureStatus.pending:
            return Center(
              child: CircularProgressIndicator(),
            );
          case FutureStatus.rejected:
            return Center(
              child: Text('Erro ao carregar repositórios'),
            );
          case FutureStatus.fulfilled:
          final List<GithubRepository> repositories = future.result;
            return RefreshIndicator(
              child: ListView.builder(
                controller: _controller,
                padding: const EdgeInsets.all(10.0),
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: repositories.length,
                itemBuilder: ( context, index) {
                    final repository = repositories[index];
                    return RepositoriesCell(repository);
                },
              ), 
              onRefresh: _refresh,
              );
        }

      },
    );

  }

  Future _refresh() => store.fetchGithubRepositories();
}