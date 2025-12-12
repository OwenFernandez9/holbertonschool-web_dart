import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
    try {
        final url = Uri.parse('https://rickandmortyapi.com/api/character');
        final response = await http.get(url);

        if (response.statusCode != 200) {
        throw 'Failed to load characters';
        }

        final data = json.decode(response.body);
        final List characters = data['results'];

        for (var character in characters) {
        print(character['name']);
        }
    } catch (e) {
        print('error caught: $e');
    }
}
