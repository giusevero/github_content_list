// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'githubRepository_Store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GithubRepositoryStore on _GithubRepositoryStore, Store {
  final _$githubRepositoriesAtom =
      Atom(name: '_GithubRepositoryStore.githubRepositories');

  @override
  ObservableFuture<List<GithubRepository>> get githubRepositories {
    _$githubRepositoriesAtom.reportRead();
    return super.githubRepositories;
  }

  @override
  set githubRepositories(ObservableFuture<List<GithubRepository>> value) {
    _$githubRepositoriesAtom.reportWrite(value, super.githubRepositories, () {
      super.githubRepositories = value;
    });
  }

  final _$_GithubRepositoryStoreActionController =
      ActionController(name: '_GithubRepositoryStore');

  @override
  Future<dynamic> fetchGithubRepositories() {
    final _$actionInfo = _$_GithubRepositoryStoreActionController.startAction(
        name: '_GithubRepositoryStore.fetchGithubRepositories');
    try {
      return super.fetchGithubRepositories();
    } finally {
      _$_GithubRepositoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
githubRepositories: ${githubRepositories}
    ''';
  }
}
