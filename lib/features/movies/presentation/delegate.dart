import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/movies/presentation/manager/search_bloc/search_bloc.dart';
import 'package:movies/features/movies/presentation/pages/home/widgets/suggestions.dart';
import 'package:movies/features/movies/presentation/widgets/loading_widget.dart';

class SearchDelegateMovie extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    final action = query.isEmpty
        ? Container()
        : IconButton(
            onPressed: () => query = '',
            icon: const Icon(Icons.clear),
          );
    return [action];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    context.read<SearchBloc>().add(SearchEvent.movies(query: query));
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) => state.when(
        loading: () => const LoadingWidget(height: 300),
        success: (movies) => SugestionsWidget(movies),
        failure: (message) => Text(message),
        addToHistorySuccess: () => Container(),
        addToHistoryFailure: (message) => Text(message),
      ),
    );
  }
}
