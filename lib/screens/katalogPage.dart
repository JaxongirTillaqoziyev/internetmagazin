import 'package:flutter/material.dart';

import 'detail_screen.dart';

class Katalogpage extends StatefulWidget {
  const Katalogpage({super.key});

  @override
  State<Katalogpage> createState() => _KatalogpageState();
}

class _KatalogpageState extends State<Katalogpage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  final List<String> _items = [
    'назначение',
    'Тип средства ',
    'Тип кожи',
    'Линия косметики',
    'Наборы',
    'Акции',
    'Консультация  с косметологом '
  ];

  List<String> get _filteredItems {
    if (_searchQuery.isEmpty) {
      return _items;
    } else {
      return _items
          .where(
              (item) => item.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Поиск',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Назначение',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Тип средства',
                    style: TextStyle(fontSize: 25),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPAge()),
                        );
                      },
                      child: Text(
                        'Тип кожи',
                        style: TextStyle(fontSize: 25),
                      )),
                  Text(
                    'Линия косметики',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Наборы',
                    style: TextStyle(fontSize: 25),
                  ),
                  Row(
                    children: [
                      Text(
                        'Акции',
                        style: TextStyle(fontSize: 25),
                      ),
                      Image(
                        image: AssetImage("images/yulduzcha.png"),
                      )
                    ],
                  ),
                  Text(
                    'Консультация  с косметологом',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              // Elementlarni markazda joylashtiradi
              children: [
                // Background Image
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/bak.png'), // Rasm manbasi
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
                // Button
                Positioned(
                  left: 10, // Tugmani pastga yaqin joylashtiradi
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Составим схему идеального  домашнего ухода"),
                      Text("10 вопросов о вашей коже"),
                      ElevatedButton(
                        onPressed: () {
                          // Bu yerda tugma bosilganda bajariladigan amal
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Button clicked!')),
                          );
                        },
                        child: Text('Пройти Тест'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          foregroundColor: Colors.white,
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
