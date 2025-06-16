import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContactPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top AppBar
      appBar: AppBar(
        title: Text('Contact'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // TODO: Implement navigation
          },
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Top section: Profile Picture + Name/Role
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Image
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/ethan.png'),
                ),

                SizedBox(width: 20),

                // Name and Role in a Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Anuj Shahdeo',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Software Engineer',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 30),

            // Contact Details Section in Column
            Column(
              children: [
                // Phone Info
                ContactInfoRow(
                  icon: Icons.phone,
                  info: '8577966580',
                ),
                SizedBox(height: 10),

                // Email Info
                ContactInfoRow(
                  icon: Icons.email_outlined,
                  info: 'anuj.shahdeo_cs23@gla.ac.in',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// A widget that lays out an icon and text in a row to show contact info.
class ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String info;

  const ContactInfoRow({
    required this.icon,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Icon with background
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 20),
          ),

          SizedBox(width: 12),

          // Info Text
          Text(
            info,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
