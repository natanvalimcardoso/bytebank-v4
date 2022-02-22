// ignore_for_file: file_names
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../models/transaction.dart';
import 'dart:convert';

const String url = 'http://172.19.240.1:8080/transactions';

class TransactionWebClient {
  Future<List<Transaction>> findAll() async {
    final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 2));
    final List<dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson.map((dynamic json) => Transaction.fromJson(json)).toList();
  }

  Future<Transaction> save(Transaction transaction) async {
    final String transactionJson = jsonEncode(transaction.toJson());
    final Response response = await http.post(Uri.parse(url),
        headers: {
          'Content-type': 'application/json',
          'password': '1000',
        },
        body: transactionJson);
        
    return Transaction.fromJson(jsonDecode(response.body));
  }
}