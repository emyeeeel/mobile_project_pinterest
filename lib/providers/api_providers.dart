import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinterest_clone/models/photo_model.dart';

import '../services/api_services.dart';


final unsplashPhotosProvider = FutureProvider<List<UnsplashPhoto>>((ref) async {
  final service = ApiService();
  return service.getPhotos();
});