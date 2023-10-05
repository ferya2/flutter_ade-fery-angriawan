// gallery_bloc.dart

import 'dart:async';
import 'package:bloc/bloc.dart';

// Event
abstract class GalleryEvent {}

class LoadImages extends GalleryEvent {}

// State
abstract class GalleryState {}

class GalleryLoading extends GalleryState {}

class GalleryLoaded extends GalleryState {
  final List<String> imagePaths;

  GalleryLoaded(this.imagePaths);
}

class GalleryError extends GalleryState {
  final String error;

  GalleryError(this.error);
}

// BLoC
class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryBloc() : super(GalleryLoading());

  @override
  Stream<GalleryState> mapEventToState(GalleryEvent event) async* {
    if (event is LoadImages) {
      yield GalleryLoading();
      try {
        // Gantilah ini dengan logika untuk memuat daftar gambar Anda.
        final List<String> imagePaths = [
          'assets/background.jpg',
          'assets/kalilinux.png',
          'assets/background.jpg',
          'assets/kalilinux.png',
          'assets/background.jpg',
          'assets/kalilinux.png',
          'assets/background.jpg',
          'assets/kalilinux.png',
        ];
        yield GalleryLoaded(imagePaths);
      } catch (e) {
        yield GalleryError(e.toString());
      }
    }
  }
}
