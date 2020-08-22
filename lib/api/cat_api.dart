import 'network.dart';

// My API key
const String apiKey = 'fb4ab724-bf7a-464b-b8b0-d573baaf3295';
// A string value of the API to get the list of breeds
const String catAPIURL = 'https://api.thecatapi.com/v1/breeds?';
// A string URL for running a cat image search
const String catImageAPIURL = 'https://api.thecatapi.com/v1/images/search?';
// A string to capture the actual breed ID
const String breedString = 'breed_id=';
// A string that uses your API key to add to the final URL
const String apiKeyString = 'x-api-key=$apiKey';

class CatAPI {
  /// A method [getCatBreeds()] to return the breed data
  Future<dynamic> getCatBreeds() async {
    Network network = Network('$catAPIURL$apiKeyString');
    var catData = await network.getData();
    return catData;
  }

  Future<dynamic> getCatBreed(String breedName) async {
    Network network =
        Network('$catImageAPIURL$breedString$breedName&$apiKeyString');
    var catData = await network.getData();
    return catData;
  }
}
