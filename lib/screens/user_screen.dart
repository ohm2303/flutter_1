import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPageScreen extends StatefulWidget {
  const UserPageScreen({Key? key}) : super(key: key);

  @override
  State<UserPageScreen> createState() => _UserPageScreenState();
}

class _UserPageScreenState extends State<UserPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://example.com/user_profile_image.jpg'), // เปลี่ยน URL เป็นลิงก์รูปภาพของผู้ใช้จริง
            ),
            const SizedBox(height: 20),
            Text(
              'ชื่อผู้ใช้',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // ใส่โค้ดสำหรับการดำเนินการต่างๆ เมื่อกดปุ่ม
              },
              child: const Text('แก้ไขโปรไฟล์'),
            ),
            const SizedBox(height: 20),
            Text(
              'ข้อมูลเพิ่มเติม',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'รายละเอียดเพิ่มเติมเกี่ยวกับผู้ใช้',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
