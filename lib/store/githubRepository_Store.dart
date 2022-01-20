import 'package:mobx/mobx.dart';
import 'package:github_content_list/model/githubRepository.dart';
import 'package:github_content_list/service/services.dart';

part 'githubRepository_Store.g.dart';

class GithubRepositoryStore = _GithubRepositoryStore with _$GithubRepositoryStore;

abstract class _GithubRepositoryStore with Store {
  final Service service = Service();

  @observable
  ObservableFuture<List<GithubRepository>> githubRepositories = ObservableFuture<List<GithubRepository>>.value([]);
  
  
  @action
  Future fetchGithubRepositories() => githubRepositories = ObservableFuture(service
    .getGithubRepositories()
    .then((value) => value));

  void getTheGithubRepositories() {
    fetchGithubRepositories();
  }

}