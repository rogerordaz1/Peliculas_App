import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/const_app.dart';
import 'package:movies/features/movies/domain/entities/actor_entity.dart';
import 'package:movies/features/movies/presentation/manager/cast_bloc/cast_bloc.dart';
import 'package:movies/features/movies/presentation/widgets/loading_widget.dart';

class SliderHorizontalCast extends StatelessWidget {
  const SliderHorizontalCast({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CastBloc, CastState>(
      builder: (context, state) => state.when(
        loading: () => const LoadingWidget(height: 200),
        success: (cast) => SliderHorizontalCastView(cast),
        failure: (errorMsg) => Text(errorMsg),
      ),
    );
  }
}

class SliderHorizontalCastView extends StatelessWidget {
  const SliderHorizontalCastView(this.cast, {super.key});

  final List<ActorEntity> cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 300,
      child: Column(
        children: [
          const Text(
            'Actors',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              pageSnapping: false,
              controller: PageController(viewportFraction: 0.3, initialPage: 1),
              itemCount: cast.length,
              itemBuilder: (_, i) {
                return SliderHorizontalCastViewItem(cast[i]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SliderHorizontalCastViewItem extends StatelessWidget {
  const SliderHorizontalCastViewItem(this.actor, {super.key});

  final ActorEntity actor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              fit: BoxFit.cover,
              height: 180,
              placeholder: AssetImage(ConstApp.placeholder),
              image: CachedNetworkImageProvider(
                '${ConstApp.urlImage}${actor.profile_path}',
              ),
            ),
          ),
        ),
        Text(actor.name),
      ],
    );
  }
}
