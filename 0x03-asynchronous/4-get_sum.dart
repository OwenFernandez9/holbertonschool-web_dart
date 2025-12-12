import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    final userMap = json.decode(await fetchUserData()) as Map<String, dynamic>;
    final userId = userMap['id'] as String;

    final ordersDecoded = json.decode(await fetchUserOrders(userId));
    final orders = (ordersDecoded as List<dynamic>);

    num total = 0;

    for (final product in orders) {
      final priceDecoded = json.decode(await fetchProductPrice(product));
      total += priceDecoded as num;
    }

    return total;
  } catch (_) {
    return -1;
  }
}
