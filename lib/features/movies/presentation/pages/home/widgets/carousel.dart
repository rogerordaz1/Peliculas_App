import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/const_app.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/presentation/manager/cast_bloc/cast_bloc.dart';
import 'package:movies/features/movies/presentation/manager/detail_bloc/detail_bloc_bloc.dart';
import 'package:movies/features/movies/presentation/manager/nowplaying_bloc/nowplaying_bloc.dart';
import 'package:movies/features/movies/presentation/pages/movie/movie_page.dart';
import 'package:movies/features/movies/presentation/widgets/loading_widget.dart';
import 'package:palette_generator/palette_generator.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<NowplayingBloc, NowplayingState>(
      buildWhen: (oldState, newState) => oldState != newState,
      builder: (context, state) => state.when(
        loading: () => LoadingWidget(height: size.height * 0.5),
        success: (movies) => CarouselView(movies),
        failure: (message) => Text(message),
      ),
    );
  }
}

class CarouselView extends StatefulWidget {
  const CarouselView(this.movies, {Key? key}) : super(key: key);
  final List<MovieEntity> movies;

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  PaletteGenerator? paletteGenerator;
  Color? dominante = Colors.white;
  Color? vibrant = Colors.white;

  @override
  void initState() {
    getImagePalette(CachedNetworkImageProvider(
      '${ConstApp.urlImage}${widget.movies[0].poster_path}',
    ));

    super.initState();
  }

  Future<void> getImagePalette(ImageProvider imageProvider) async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(imageProvider);
    setState(() {
      if (paletteGenerator != null) {
        dominante = paletteGenerator!.dominantColor != null
            ? paletteGenerator!.dominantColor!.color
            : Colors.white;
        vibrant = paletteGenerator!.vibrantColor != null
            ? paletteGenerator!.vibrantColor!.color
            : Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.transparent,
                dominante ?? Colors.white,
                vibrant ?? Colors.white,
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 30),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Swiper(
            curve: Curves.ease,
            onIndexChanged: (i) {
              setState(() {
                getImagePalette(CachedNetworkImageProvider(
                  '${ConstApp.urlImage}${widget.movies[i].poster_path}',
                ));
              });
            },
            itemBuilder: (_, i) => CarouselItem(widget.movies[i]),
            itemCount: widget.movies.length,
            viewportFraction: 0.8,
            scale: 0.9,
          ),
        ),
      ],
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem(this.movie, {Key? key}) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    final tag = '${movie.id}now_playing';

    final detailBloc = context.read<DetailBloc>();

    return GestureDetector(
      onTap: () {
        detailBloc
            .add(DetailBlocEvent.movieCliked(movieId: movie.id.toString()));
            
        context.read<CastBloc>().add(CastEvent.cast(movie.id.toString()));

        Navigator.pushNamed(
          context,
          MoviePage.routeName,
          arguments: [movie, tag],
        );
      },
      child: Hero(
        tag: tag,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              height: 100,
              placeholder: AssetImage(ConstApp.placeholder),
              image: CachedNetworkImageProvider(
                '${ConstApp.urlImage}${movie.poster_path}',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
