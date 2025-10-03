import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(), // đặt màn hình home là  ProfileScreen màn chính kh mở app
    );
  }
}


// khai báo một class tĩnh profileScreen
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key}); // constructor


  @override
  Widget build(BuildContext context) {
    // trả về khung màn hình cơ bản, như một trang giấy trắng với Body
    return Scaffold(
      body: SafeArea( // giúp bọc nội dung để tránh bị che bởi thanh trạng thái trên đt
        child: Column( // sắp xếp widget theo chiều dọc từ trên xuống
          mainAxisAlignment: MainAxisAlignment.center,
          // ds con của column
          children: [
            //  khung Row chứa nút back và Edit
            Padding( // thêm khoảng cách xung quanh widget con
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row( // Row: Sắp xếp ngang (từ trái sang phải).
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton( // Iconbutton: Nút với icon
                    onPressed: () { // Sự kiện khi nhấn: Gọi hàm anonymous.
                      Navigator.maybePop(
                          context); // quay lại màn hình trước nếu có
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    onPressed: () {
                      // thêm code
                    },
                    icon: Icon(Icons.edit),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // SizedBox: Tạo khoảng trống dọc 40px giữa Row và avatar.

            // Avatar
            const CircleAvatar( // CircleAvatar: widget hình tròn cho avater
              radius: 60,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/300",
              ),
            ),
            const SizedBox(height: 20),
            // Khoảng trống 20px giữa avatar và tên.

            // Tên
            const Text( // Text: hiển thị chữ
              "John Wick",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Địa chỉ
            const Text(
              "California, USA",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
              ),
            ),
          ],
        ),
      ),
    );
  }
}



