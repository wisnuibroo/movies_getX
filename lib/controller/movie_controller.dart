import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/model/model_movies.dart';

class MovieController extends GetxController {
  var items = <ModelMovies>[
    ModelMovies('Starwars', 'assets/star wars poster.jpg'),
    ModelMovies('Transformers', 'assets/transformers poster.jpg'),
    ModelMovies('Godzilla x Kong', 'assets/godzila x kong poster.jpg'),
    ModelMovies('Jurassic Park', 'assets/jurassic park poster.jpg'),
    ModelMovies('Marvel', 'assets/marvel poster.jpg'),
    ModelMovies('Superman', 'assets/superman poster.jpg'),
    ModelMovies('Demon Slayer', 'assets/demon slayer poster.jpg'),
    ModelMovies('Naruto', 'assets/naruto poster.jpg'),
    ModelMovies('One Piece', 'assets/one piece poster.jpg'),
    ModelMovies('Toy Story', 'assets/toy story poster.jpg'),
    ModelMovies('Kungfu Panda', 'assets/kungfu panda poster.jpg'),
    ModelMovies('Lego', 'assets/lego poster.jpg'),
    ModelMovies('Doraemon Nobita', 'assets/doraemon poster.jpg'),
  ].obs;

  var filteredItems = <ModelMovies>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredItems.value = items;
  }

  void filterItems(String query) {
    if (query.isEmpty) {
      filteredItems.value = items;
    } else {
      filteredItems.value = items.where((item) {
        return item.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
  }

  filterMovies(String query) {}
}
