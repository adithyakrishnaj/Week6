import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// =======================
// CONTACT MODEL (OOP)
// =======================

class Contact {
  final String name;
  final String phone;

  Contact(this.name, this.phone);
}

// =======================
// MAIN APP
// =======================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact List',
      home: ContactPage(),
    );
  }
}

// =======================
// CONTACT PAGE
// =======================

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  // Contact List
  final List<Contact> contacts = [
    Contact("Adithya", "9876543210"),
    Contact("Deepak", "9123456780"),
    Contact("Arjun", "9988776655"),
    Contact("Deon", "9012345678"),
    Contact("Albin", "9090909090"),
  ];

  // Categories
  final List<String> categories = [
    "Family",
    "Friends",
    "Work",
    "College"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
      ),

      body: Column(
        children: [

          // =======================
          // CATEGORY GRID
          // =======================

          Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categories.length,

              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3,
              ),

              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    categories[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),

          // =======================
          // CONTACT LIST
          // =======================

          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,

              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),

                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        contacts[index].name[0],
                      ),
                    ),

                    title: Text(contacts[index].name),

                    subtitle: Text(
                      contacts[index].phone,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}