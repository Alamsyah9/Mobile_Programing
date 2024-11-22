import 'package:flutter/material.dart';
import '../bottom_navbar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        actions: [
          Icon(Icons.account_circle, color: Colors.grey[800]),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting section
            Text(
              "Halo, Dharma!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              "Semoga harimu sangat menyenangkan!",
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),

            // Tab Section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildTab("Tugasku", isSelected: true),
                SizedBox(width: 10),
                _buildTab("Projek"),
                SizedBox(width: 10),
                _buildTab("Catatan"),
              ],
            ),
            SizedBox(height: 20),

            // Card Section
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildTaskCard(Icons.code, "UTS", "Mobile Programming", "10.00", "23 Oktober 2024", Colors.lightBlueAccent),
                  SizedBox(width: 10),
                  _buildTaskCard(Icons.landscape,"Holiday", "Tomorrow Land", "06.00", "28 Oktober 2024", Colors.deepPurpleAccent),
                  SizedBox(width: 10),
                  _buildTaskCard(Icons.holiday_village,"Camping", "Gunung Buthak", "12.00", "12 Desember 2024", Colors.green),
                  SizedBox(width: 10),
                  _buildTaskCard(Icons.ice_skating_outlined,"Games", "DBL Arena", "19.00", "1 Januari 2025", Colors.indigoAccent),
                  SizedBox(width: 10),
                  _buildTaskCard(Icons.airplanemode_active,"Jalan-jalan", "Pantai Pandawa", "06.00", "15 Januari 2025", Colors.brown),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Progress Section
            Text(
              "Progress",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildProgressItem("UTS Kecerdasan Intelegensia", "2 hari yang lalu", true),
                  _buildProgressItem("Checkout 11.11", "6 hari yang lalu", false),
                  _buildProgressItem("Kerja Sampingan", "1 minggu yang lalu", true),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }

  Widget _buildTab(String title, {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row( // Use Row to arrange elements horizontally
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align content horizontally
        children: [
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Visibility( // Show icon only for selected tab
            visible: isSelected,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskCard(IconData icon, category, String title, String time, String date, Color color) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 30, color: Colors.white),
              SizedBox(width: 8),
              Text(
                category,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Text(
            "$time",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 40),
          Text(
            "$date",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressItem(String title, String date, bool isCompleted) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Icon(
            isCompleted ? Icons.check_circle : Icons.cancel,
            color: isCompleted ? Colors.green : Colors.red,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                date,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
