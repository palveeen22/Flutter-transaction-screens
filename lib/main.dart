import 'package:flutter/material.dart';
import 'package:test_yipy/screens/internet_screen.dart';
import 'package:test_yipy/screens/payment_succesfull_screen.dart';
import 'package:test_yipy/screens/transaction_history_screen.dart';

// Import the TransactionHistoryScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const InternetScreen(),
        // '/home': (context) => const PaymentSuccses(),
        '/paymentSuccess': (context) => const PaymentSuccses(),
        '/transactionHistory': (context) => const TransactionHistoryScreen(),
      },
    );
  }
}
