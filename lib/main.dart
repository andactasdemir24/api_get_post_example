import 'package:api_post_example/app/get_it/locator.dart';
import 'package:api_post_example/app/models/user_model.dart';
import 'package:api_post_example/app/viewModel/user_view_model.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final idController = TextEditingController();
  final userViewModel = locator.get<UserViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: idController,
              decoration: const InputDecoration(
                labelText: 'ID Girin',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await userViewModel.getProduct(int.parse(idController.text));
                print(userViewModel.product.price);
              },
              child: const Text('GET İsteği Gönder'),
            ),
            ElevatedButton(
              onPressed: () async {
                var product = Product(
                  id: 99,
                  title: "title",
                  price: 53,
                  description: "description",
                  category: "category",
                  image: "image",
                  rating: Rating(rate: 4, count: 53),
                );
                await userViewModel.createProduct(product);
              },
              child: const Text('POST İsteği Gönder'),
            ),
          ],
        ),
      ),
    );
  }
}
