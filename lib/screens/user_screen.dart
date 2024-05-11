import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPageScreen extends StatefulWidget {
  const UserPageScreen({super.key});

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
                  'https://www.google.com/imgres?q=doraemon&imgurl=https%3A%2F%2Fvariety.com%2Fwp-content%2Fuploads%2F2014%2F05%2Fdoraemon2.jpg%3Fcrop%3D0px%252C193px%252C1593px%252C887px%26resize%3D1000%252C563&imgrefurl=https%3A%2F%2Fvariety.com%2F2014%2Ftv%2Fasia%2Ficonic-japanese-cartoon-doraemon-acquired-by-disney-1201176265%2F&docid=Rp8scMCoK4uAzM&tbnid=9Nw1Kx64B07ZAM&vet=12ahUKEwiY37KWmYWGAxW3z6ACHQ9TBasQM3oECBUQAA..i&w=1000&h=563&hcb=2&ved=2ahUKEwiY37KWmYWGAxW3z6ACHQ9TBasQM3oECBUQAA'),
            ),
            const SizedBox(height: 20),
            Text(
              'ชื่อผู้ใช้',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // todo something
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
