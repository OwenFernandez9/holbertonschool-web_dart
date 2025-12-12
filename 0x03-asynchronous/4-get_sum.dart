import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = json.decode(userData);
    String userId = userMap['id'];

    String ordersStr = await fetchUserOrders(userId);
    List<dynamic> orders = json.decode(ordersStr);

    double total = 0;

    for (var product in orders) {
      String priceStr = await fetchProductPrice(product);
      num decoded = json.decode(priceStr);
      total += decoded.toDouble();
    }

    return total;
  } catch (e) {
    return -1;
  }
}
